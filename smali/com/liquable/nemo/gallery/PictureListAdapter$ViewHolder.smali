.class Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "PictureListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/gallery/PictureListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field selectedView:Landroid/widget/ImageView;

.field thumbnail:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/gallery/PictureListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/gallery/PictureListAdapter$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/PictureListAdapter$ViewHolder;-><init>()V

    return-void
.end method
