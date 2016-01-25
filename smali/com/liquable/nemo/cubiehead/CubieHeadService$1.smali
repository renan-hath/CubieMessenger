.class Lcom/liquable/nemo/cubiehead/CubieHeadService$1;
.super Ljava/lang/Object;
.source "CubieHeadService.java"

# interfaces
.implements Lcom/liquable/nemo/cubiehead/ChattingLite$ChattingLiteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/CubieHeadService;->initChattingLite(Landroid/view/WindowManager;)V
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
    .line 201
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$1;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/CubieHeadService$1;->this$0:Lcom/liquable/nemo/cubiehead/CubieHeadService;

    # invokes: Lcom/liquable/nemo/cubiehead/CubieHeadService;->chattingClose()V
    invoke-static {v0}, Lcom/liquable/nemo/cubiehead/CubieHeadService;->access$000(Lcom/liquable/nemo/cubiehead/CubieHeadService;)V

    .line 205
    return-void
.end method
