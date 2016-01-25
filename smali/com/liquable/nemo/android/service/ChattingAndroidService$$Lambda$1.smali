.class final synthetic Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/friend/AccountDaemon;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/friend/AccountDaemon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;->arg$1:Lcom/liquable/nemo/friend/AccountDaemon;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/friend/AccountDaemon;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;-><init>(Lcom/liquable/nemo/friend/AccountDaemon;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/friend/AccountDaemon;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;-><init>(Lcom/liquable/nemo/friend/AccountDaemon;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$$Lambda$1;->arg$1:Lcom/liquable/nemo/friend/AccountDaemon;

    invoke-virtual {v0}, Lcom/liquable/nemo/friend/AccountDaemon;->repairRpcAccessTokenIfRequired()Lcom/liquable/future/IFuture;

    return-void
.end method
