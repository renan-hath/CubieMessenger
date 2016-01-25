.class final synthetic Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Function;


# static fields
.field private static final instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;

    invoke-direct {v0}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;-><init>()V

    sput-object v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;->instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Function;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;->instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$2;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Exception;

    # invokes: Lcom/liquable/nemo/friend/AccountDaemon;->lambda$repairRpcAccessTokenIfRequired$19(Ljava/lang/Exception;)Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-static {p1}, Lcom/liquable/nemo/friend/AccountDaemon;->access$lambda$1(Ljava/lang/Exception;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v0

    return-object v0
.end method
