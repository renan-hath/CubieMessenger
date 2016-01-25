.class Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->onFutureDone(Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$image:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iput-object p2, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 754
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iget-object v4, v4, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-virtual {v4}, Lcom/aviary/android/feather/widget/IAPDialog;->valid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iget-object v4, v4, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 757
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 758
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 759
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    sget v5, Lcom/aviary/android/feather/R$drawable;->aviary_ic_na:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 765
    :goto_1
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 766
    .local v2, "parent":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 767
    sget v4, Lcom/aviary/android/feather/R$id;->aviary_progress:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 768
    .local v3, "progress":Landroid/view/View;
    if-eqz v3, :cond_2

    .line 769
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 774
    .end local v3    # "progress":Landroid/view/View;
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iget-object v4, v4, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # getter for: Lcom/aviary/android/feather/widget/IAPDialog;->mView:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/aviary/android/feather/widget/IAPDialog;->access$500(Lcom/aviary/android/feather/widget/IAPDialog;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10a0000

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 775
    .local v0, "anim":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 776
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;

    iget-object v5, v5, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :catch_0
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 761
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "parent":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 762
    iget-object v4, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$image:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/aviary/android/feather/widget/IAPDialog$BackgroundImageLoaderListener$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
