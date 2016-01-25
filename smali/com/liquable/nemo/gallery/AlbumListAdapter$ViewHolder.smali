.class Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AlbumListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/gallery/AlbumListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public album:Lcom/liquable/nemo/gallery/AlbumInfo;

.field imageCount:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field thumbnail:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/gallery/AlbumListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/gallery/AlbumListAdapter$1;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/liquable/nemo/gallery/AlbumListAdapter$ViewHolder;-><init>()V

    return-void
.end method
