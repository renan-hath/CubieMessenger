.class final synthetic Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# static fields
.field private static final instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;

    invoke-direct {v0}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;-><init>()V

    sput-object v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;->instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/liquable/future/Consumer;
    .locals 1

    sget-object v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;->instance:Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$3;

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/liquable/nemo/model/account/ProfileDto;

    # invokes: Lcom/liquable/nemo/friend/AccountDaemon;->lambda$repairRpcAccessTokenIfRequired$20(Lcom/liquable/nemo/model/account/ProfileDto;)V
    invoke-static {p1}, Lcom/liquable/nemo/friend/AccountDaemon;->access$lambda$2(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method
