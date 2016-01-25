.class public Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
.super Ljava/lang/Object;
.source "BoardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/BoardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BoardViewHolder"
.end annotation


# instance fields
.field boardIconImageView:Lcom/liquable/volley/toolbox/NetworkImageView;

.field boardIconMaskView:Landroid/view/View;

.field boardTitleTextView:Landroid/widget/TextView;

.field cellView:Landroid/view/View;

.field favoriteCountTextView:Landroid/widget/TextView;

.field lastArticleTitleTextView:Landroid/widget/TextView;

.field lastUpdateTimeTextView:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
