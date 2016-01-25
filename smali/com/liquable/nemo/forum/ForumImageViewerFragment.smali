.class public Lcom/liquable/nemo/forum/ForumImageViewerFragment;
.super Lcom/liquable/nemo/BaseFragment;
.source "ForumImageViewerFragment.java"


# instance fields
.field private touchImageView:Lcom/liquable/volley/toolbox/TouchNetworkImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/liquable/nemo/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    const v2, 0x7f0300b5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 27
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0800c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    iput-object v2, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->touchImageView:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    .line 28
    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->touchImageView:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    new-instance v3, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/forum/ForumImageViewerFragment$1;-><init>(Lcom/liquable/nemo/forum/ForumImageViewerFragment;)V

    invoke-virtual {v2, v3}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setTouchImageViewListener(Lcom/liquable/nemo/widget/TouchImageView$TouchImageViewListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/forum/ForumImageViewerActivity$CreateIntent;->getImageUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "imageUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/liquable/nemo/forum/ForumImageViewerFragment;->touchImageView:Lcom/liquable/volley/toolbox/TouchNetworkImageView;

    sget-object v3, Lcom/liquable/nemo/NemoManagers;->imageLoader:Lcom/liquable/volley/toolbox/ImageLoader;

    invoke-virtual {v2, v0, v3}, Lcom/liquable/volley/toolbox/TouchNetworkImageView;->setImageUrl(Ljava/lang/String;Lcom/liquable/volley/toolbox/ImageLoader;)V

    .line 57
    return-object v1
.end method
