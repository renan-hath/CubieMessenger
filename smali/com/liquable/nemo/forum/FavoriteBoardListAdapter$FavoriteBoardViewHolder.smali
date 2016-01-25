.class public Lcom/liquable/nemo/forum/FavoriteBoardListAdapter$FavoriteBoardViewHolder;
.super Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;
.source "FavoriteBoardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/forum/FavoriteBoardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FavoriteBoardViewHolder"
.end annotation


# instance fields
.field unreadLabelImageView:Landroid/widget/ImageView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/liquable/nemo/forum/BoardListAdapter$BoardViewHolder;-><init>()V

    return-void
.end method
