.class Lcom/liquable/nemo/camera/model/CameraManager$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/camera/model/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/camera/model/CameraManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/camera/model/CameraManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/camera/model/CameraManager;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/liquable/nemo/camera/model/CameraManager$1;->this$0:Lcom/liquable/nemo/camera/model/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 7
    .param p1, "f1"    # Landroid/hardware/Camera$Size;
    .param p2, "f2"    # Landroid/hardware/Camera$Size;

    .prologue
    const-wide/16 v5, 0x0

    .line 55
    iget v2, p1, Landroid/hardware/Camera$Size;->width:I

    iget v3, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    iget v3, p2, Landroid/hardware/Camera$Size;->width:I

    iget v4, p2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-long v0, v2

    .line 56
    .local v0, "result":J
    cmp-long v2, v0, v5

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    cmp-long v2, v0, v5

    if-gez v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/camera/model/CameraManager$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v0

    return v0
.end method
