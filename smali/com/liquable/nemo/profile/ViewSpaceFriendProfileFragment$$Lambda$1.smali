.class final synthetic Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    iput-object p2, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;->arg$2:Ljava/lang/String;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$1;->arg$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$onCreateView$38(Ljava/lang/String;Ljava/lang/Boolean;)V
    invoke-static {v0, v1, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$lambda$0(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
