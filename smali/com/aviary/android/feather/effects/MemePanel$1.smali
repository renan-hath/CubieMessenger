.class Lcom/aviary/android/feather/effects/MemePanel$1;
.super Ljava/lang/Object;
.source "MemePanel.java"

# interfaces
.implements Lit/sephiroth/android/library/imagezoom/ImageViewTouchBase$OnDrawableChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/MemePanel;->onCreate(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/MemePanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/MemePanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/MemePanel;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/aviary/android/feather/effects/MemePanel$1;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iget-object v5, p0, Lcom/aviary/android/feather/effects/MemePanel$1;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/MemePanel;->mLogger:Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "onDrawableChanged"

    aput-object v8, v6, v7

    invoke-interface {v5, v6}, Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;->info([Ljava/lang/Object;)V

    .line 112
    iget-object v5, p0, Lcom/aviary/android/feather/effects/MemePanel$1;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/MemePanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    invoke-virtual {v5}, Lit/sephiroth/android/library/imagezoom/ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 113
    .local v1, "mImageMatrix":Landroid/graphics/Matrix;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/MemePanel;->getMatrixValues(Landroid/graphics/Matrix;)[F

    move-result-object v2

    .line 114
    .local v2, "matrixValues":[F
    iget-object v5, p0, Lcom/aviary/android/feather/effects/MemePanel$1;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    iget-object v5, v5, Lcom/aviary/android/feather/effects/MemePanel;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x4

    aget v6, v2, v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 115
    .local v0, "height":I
    iget-object v5, p0, Lcom/aviary/android/feather/effects/MemePanel$1;->this$0:Lcom/aviary/android/feather/effects/MemePanel;

    invoke-virtual {v5}, Lcom/aviary/android/feather/effects/MemePanel;->getContentView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/aviary/android/feather/R$id;->aviary_meme_dumb:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 116
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .local v3, "p":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v5, v0, -0x1e

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 118
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 120
    return-void
.end method
