.class Lcom/liquable/nemo/MainActivity$4;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/MainActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/MainActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/MainActivity;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/MainActivity;
    .param p2, "x0"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/liquable/nemo/MainActivity$4;->this$0:Lcom/liquable/nemo/MainActivity;

    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 355
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 356
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/liquable/nemo/MainActivity$4;->this$0:Lcom/liquable/nemo/MainActivity;

    # getter for: Lcom/liquable/nemo/MainActivity;->tabs:[Lcom/liquable/nemo/MainActivity$TabType;
    invoke-static {v0}, Lcom/liquable/nemo/MainActivity;->access$700(Lcom/liquable/nemo/MainActivity;)[Lcom/liquable/nemo/MainActivity$TabType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 367
    if-nez p1, :cond_0

    .line 368
    new-instance v0, Lcom/liquable/nemo/main/MainFriendListView;

    invoke-direct {v0}, Lcom/liquable/nemo/main/MainFriendListView;-><init>()V

    .line 379
    :goto_0
    return-object v0

    .line 370
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 371
    new-instance v0, Lcom/liquable/nemo/main/MainChatGroupListView;

    invoke-direct {v0}, Lcom/liquable/nemo/main/MainChatGroupListView;-><init>()V

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 374
    new-instance v0, Lcom/liquable/nemo/main/MainForumView;

    invoke-direct {v0}, Lcom/liquable/nemo/main/MainForumView;-><init>()V

    goto :goto_0

    .line 376
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 377
    new-instance v0, Lcom/liquable/nemo/main/MainRecommendForumView;

    invoke-direct {v0}, Lcom/liquable/nemo/main/MainRecommendForumView;-><init>()V

    goto :goto_0

    .line 379
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
