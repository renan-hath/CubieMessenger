.class public Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;
.super Ljava/lang/Object;
.source "ObjectExpirationHeaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final datePattern:Ljava/util/regex/Pattern;

.field private static final rulePattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "expiry-date=\"(.*?)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->datePattern:Ljava/util/regex/Pattern;

    .line 37
    const-string/jumbo v0, "rule-id=\"(.*)\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->rulePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .param p1, "expirationHeader"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    const/4 v4, 0x0

    .line 58
    sget-object v5, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->datePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 59
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "date":Ljava/lang/String;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "EEE, dd MMM yyyy HH:MM:SS z"

    invoke-direct {v2, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, "fmt":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 73
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "fmt":Ljava/text/SimpleDateFormat;
    :cond_0
    :goto_0
    return-object v4

    .line 67
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v2    # "fmt":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/text/ParseException;
    goto :goto_0
.end method

.method private parseRuleId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "expirationHeader"    # Ljava/lang/String;

    .prologue
    .line 78
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    sget-object v1, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->rulePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 79
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handle(Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;Lcom/amazonaws/http/HttpResponse;)V
    .locals 3
    .param p2, "response"    # Lcom/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/amazonaws/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;, "Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler<TT;>;"
    .local p1, "result":Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;, "TT;"
    invoke-virtual {p2}, Lcom/amazonaws/http/HttpResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-amz-expiration"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "expirationHeader":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->setExpirationTime(Ljava/util/Date;)V

    .line 52
    invoke-direct {p0, v0}, Lcom/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler;->parseRuleId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazonaws/services/s3/internal/ObjectExpirationResult;->setExpirationTimeRuleId(Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
