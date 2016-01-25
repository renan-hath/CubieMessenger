.class final synthetic Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;->arg$1:Ljava/lang/Boolean;

    return-void
.end method

.method private static get$Lambda(Ljava/lang/Boolean;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static lambdaFactory$(Ljava/lang/Boolean;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;-><init>(Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/friend/AccountDaemon$$Lambda$1;->arg$1:Ljava/lang/Boolean;

    # invokes: Lcom/liquable/nemo/friend/AccountDaemon;->lambda$updateSpacePublicProfile$18(Ljava/lang/Boolean;)V
    invoke-static {v0}, Lcom/liquable/nemo/friend/AccountDaemon;->access$lambda$0(Ljava/lang/Boolean;)V

    return-void
.end method
