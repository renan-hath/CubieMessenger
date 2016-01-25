.class Lcom/liquable/nemo/chat/WidgetManager$13;
.super Ljava/lang/Object;
.source "WidgetManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/chat/WidgetManager;->openMediaFromLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/WidgetManager;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/chat/WidgetManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/chat/WidgetManager;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/liquable/nemo/chat/WidgetManager$13;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/liquable/nemo/chat/WidgetManager$13;->this$0:Lcom/liquable/nemo/chat/WidgetManager;

    # invokes: Lcom/liquable/nemo/chat/WidgetManager;->openMedia()V
    invoke-static {v0}, Lcom/liquable/nemo/chat/WidgetManager;->access$100(Lcom/liquable/nemo/chat/WidgetManager;)V

    .line 436
    return-void
.end method
