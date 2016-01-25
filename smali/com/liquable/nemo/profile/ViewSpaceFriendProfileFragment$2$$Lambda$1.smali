.class final synthetic Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/liquable/future/Consumer;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)Lcom/liquable/future/Consumer;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;)V

    return-object v0
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2$$Lambda$1;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;

    check-cast p1, Lcom/liquable/nemo/model/account/AccountDto;

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->lambda$onClick$37(Lcom/liquable/nemo/model/account/AccountDto;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;->access$lambda$0(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$2;Lcom/liquable/nemo/model/account/AccountDto;)V

    return-void
.end method
