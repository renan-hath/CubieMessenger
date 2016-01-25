.class Lcom/aviary/android/feather/effects/TiltShiftPanel$1;
.super Ljava/lang/Object;
.source "TiltShiftPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/effects/TiltShiftPanel;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/effects/TiltShiftPanel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/effects/TiltShiftPanel;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 214
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v0, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mImageView:Lit/sephiroth/android/library/imagezoom/ImageViewTouch;

    check-cast v0, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;

    .line 216
    .local v0, "image":Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    iget-object v1, v1, Lcom/aviary/android/feather/effects/TiltShiftPanel;->mTiltShiftMode:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    sget-object v2, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    if-ne v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mCircleButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$000(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 218
    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Radial:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setTiltShiftDrawMode(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;)V

    .line 223
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/effects/TiltShiftPanel$1;->this$0:Lcom/aviary/android/feather/effects/TiltShiftPanel;

    # getter for: Lcom/aviary/android/feather/effects/TiltShiftPanel;->mRectButton:Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;
    invoke-static {v1}, Lcom/aviary/android/feather/effects/TiltShiftPanel;->access$100(Lcom/aviary/android/feather/effects/TiltShiftPanel;)Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/aviary/android/feather/widget/AviaryHighlightImageButton;->setChecked(Z)V

    .line 221
    sget-object v1, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;->Linear:Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch;->setTiltShiftDrawMode(Lcom/aviary/android/feather/widget/ImageViewTiltiShiftTouch$TiltShiftDrawMode;)V

    goto :goto_0
.end method
