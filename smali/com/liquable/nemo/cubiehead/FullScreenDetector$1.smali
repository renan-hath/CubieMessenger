.class final Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;
.super Ljava/lang/Object;
.source "FullScreenDetector.java"

# interfaces
.implements Lcom/liquable/nemo/cubiehead/FullScreenDetector$OnFullScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/FullScreenDetector;->registerFullScreenListener(Landroid/content/Context;Landroid/view/WindowManager;Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;)Lcom/liquable/nemo/cubiehead/FullScreenDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;->val$listener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fsChanged(Z)V
    .locals 1
    .param p1, "FS_Bool"    # Z

    .prologue
    .line 37
    if-eqz p1, :cond_1

    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;->val$listener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;

    invoke-interface {v0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;->fullScreenOn()V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    if-nez p1, :cond_0

    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/FullScreenDetector$1;->val$listener:Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;

    invoke-interface {v0}, Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;->fullScreenOff()V

    goto :goto_0
.end method
