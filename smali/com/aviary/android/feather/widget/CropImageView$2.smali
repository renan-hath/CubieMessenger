.class Lcom/aviary/android/feather/widget/CropImageView$2;
.super Ljava/lang/Object;
.source "CropImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/CropImageView;->onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/CropImageView;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/CropImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/CropImageView;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/aviary/android/feather/widget/CropImageView$2;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/aviary/android/feather/widget/CropImageView$2;->this$0:Lcom/aviary/android/feather/widget/CropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/aviary/android/feather/widget/CropImageView;->updateCropView(Z)V

    .line 391
    return-void
.end method
