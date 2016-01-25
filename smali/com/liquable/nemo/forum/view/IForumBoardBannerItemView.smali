.class public abstract Lcom/liquable/nemo/forum/view/IForumBoardBannerItemView;
.super Landroid/widget/FrameLayout;
.source "IForumBoardBannerItemView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    return-void
.end method


# virtual methods
.method public abstract updateView()V
.end method
