.class Lcom/aviary/android/feather/FeatherActivity$14;
.super Ljava/lang/Object;
.source "FeatherActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/FeatherActivity;->performSave(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/FeatherActivity;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$changed:Z


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/FeatherActivity;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/FeatherActivity;

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/aviary/android/feather/FeatherActivity$14;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iput-object p2, p0, Lcom/aviary/android/feather/FeatherActivity$14;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/aviary/android/feather/FeatherActivity$14;->val$changed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/aviary/android/feather/FeatherActivity$14;->this$0:Lcom/aviary/android/feather/FeatherActivity;

    iget-object v1, p0, Lcom/aviary/android/feather/FeatherActivity$14;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/aviary/android/feather/FeatherActivity$14;->val$changed:Z

    invoke-virtual {v0, v1, v2}, Lcom/aviary/android/feather/FeatherActivity;->doSave(Landroid/graphics/Bitmap;Z)V

    .line 1466
    return-void
.end method
