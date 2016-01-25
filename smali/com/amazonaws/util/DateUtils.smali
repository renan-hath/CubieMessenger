.class public Lcom/amazonaws/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# instance fields
.field protected final alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

.field protected final iso8601DateFormat:Ljava/text/SimpleDateFormat;

.field protected final rfc822DateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss z"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    .line 49
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 51
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->alternateIso8601DateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/SimpleTimeZone;

    const-string/jumbo v2, "GMT"

    invoke-direct {v1, v3, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 52
    return-void
.end method


# virtual methods
.method public formatRfc822Date(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parseRfc822Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "dateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v1, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/util/DateUtils;->rfc822DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
