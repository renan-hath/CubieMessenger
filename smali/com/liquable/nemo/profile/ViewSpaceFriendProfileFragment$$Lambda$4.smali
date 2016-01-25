.class final synthetic Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    return-void
.end method

.method private static get$Lambda(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V

    return-object v0
.end method

.method public static lambdaFactory$(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;-><init>(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment$$Lambda$4;->arg$1:Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;

    # invokes: Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->lambda$initLargeIconLayout$41(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;->access$lambda$3(Lcom/liquable/nemo/profile/ViewSpaceFriendProfileFragment;Landroid/view/View;)V

    return-void
.end method
