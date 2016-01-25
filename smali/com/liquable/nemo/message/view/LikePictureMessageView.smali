.class public Lcom/liquable/nemo/message/view/LikePictureMessageView;
.super Landroid/widget/LinearLayout;
.source "LikePictureMessageView.java"


# instance fields
.field private final imageLoader:Lcom/liquable/nemo/util/ImageLoader;

.field private final likedImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/liquable/nemo/util/ImageLoader;Landroid/view/View$OnLongClickListener;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "onLongClickListener"    # Landroid/view/View$OnLongClickListener;
    .param p4, "isSendByMe"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/message/view/LikePictureMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    .line 25
    invoke-virtual {p0}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ea

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f080270

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 28
    .local v0, "likedMask":Landroid/widget/ImageView;
    if-eqz p4, :cond_0

    .line 29
    const v2, 0x7f02048d

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 33
    :goto_0
    const v2, 0x7f08026f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/liquable/nemo/message/view/LikePictureMessageView;->likedImageView:Landroid/widget/ImageView;

    .line 34
    new-instance v2, Lcom/liquable/nemo/message/view/LikePictureMessageView$1;

    invoke-direct {v2, p0, p1}, Lcom/liquable/nemo/message/view/LikePictureMessageView$1;-><init>(Lcom/liquable/nemo/message/view/LikePictureMessageView;Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0, p3}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 41
    return-void

    .line 31
    :cond_0
    const v2, 0x7f02048c

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public clearImage()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageView;->likedImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method

.method public update(Lcom/liquable/nemo/message/model/LikePictureMessage;)V
    .locals 4
    .param p1, "likePictureMessage"    # Lcom/liquable/nemo/message/model/LikePictureMessage;

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/liquable/nemo/message/view/LikePictureMessageView;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/message/view/LikePictureMessageView;->imageLoader:Lcom/liquable/nemo/util/ImageLoader;

    iget-object v1, p0, Lcom/liquable/nemo/message/view/LikePictureMessageView;->likedImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/util/LikePictureLoadableImage;

    const/16 v3, 0x44

    invoke-direct {v2, p1, v3}, Lcom/liquable/nemo/util/LikePictureLoadableImage;-><init>(Lcom/liquable/nemo/message/model/LikePictureMessage;I)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 50
    return-void
.end method
