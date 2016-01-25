.class Lcom/liquable/nemo/cubiehead/CubieHeadService$4;
.super Ljava/lang/Object;
.source "CubieHeadService.java"

# interfaces
.implements Lcom/liquable/nemo/cubiehead/FullScreenDetector$FullScreenListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/CubieHeadService;->initFullScreenDetector(Landroid/view/WindowManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/CubieHeadService;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$4;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fullScreenOff()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$4;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$1100(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    .line 308
    return-void
.end method

.method public fullScreenOn()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$4;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->showHideHead()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$1100(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    .line 313
    return-void
.end method
