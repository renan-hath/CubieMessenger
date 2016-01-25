.class public final enum Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;
.super Ljava/lang/Enum;
.source "AwsSessionCredentialsDtoMapper.java"

# interfaces
.implements Lcom/liquable/nemo/client/mapper/ResultMapper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;",
        ">;",
        "Lcom/liquable/nemo/client/mapper/ResultMapper",
        "<",
        "Lcom/liquable/aws/AwsSessionCredentialsDto;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

.field public static final enum INSTANCE:Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    .line 7
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    sget-object v1, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->INSTANCE:Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    aput-object v1, v0, v2

    sput-object v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->$VALUES:[Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    invoke-virtual {v0}, [Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;

    return-object v0
.end method


# virtual methods
.method public map(Ljava/lang/Object;)Lcom/liquable/aws/AwsSessionCredentialsDto;
    .locals 7
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 12
    if-nez p1, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    move-object v6, p1

    .line 16
    check-cast v6, Ljava/util/Map;

    .line 18
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/liquable/aws/AwsSessionCredentialsDto;

    const-string/jumbo v1, "accessKeyId"

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "secretAccessKey"

    .line 19
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "sessionToken"

    .line 20
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "expiration"

    .line 21
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/aws/AwsSessionCredentialsDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public bridge synthetic map(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/client/mapper/AwsSessionCredentialsDtoMapper;->map(Ljava/lang/Object;)Lcom/liquable/aws/AwsSessionCredentialsDto;

    move-result-object v0

    return-object v0
.end method
