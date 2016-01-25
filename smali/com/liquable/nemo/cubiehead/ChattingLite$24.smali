.class Lcom/liquable/nemo/cubiehead/ChattingLite$24;
.super Ljava/lang/Object;
.source "ChattingLite.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/cubiehead/ChattingLite;->scheduleSecretMessageTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/cubiehead/ChattingLite;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/cubiehead/ChattingLite;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$24;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$24;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    invoke-virtual {v0}, Lcom/liquable/nemo/cubiehead/ChattingLite;->updateSecretMessages()V

    .line 908
    iget-object v0, p0, Lcom/liquable/nemo/cubiehead/ChattingLite$24;->this$0:Lcom/liquable/nemo/cubiehead/ChattingLite;

    const/4 v1, 0x0

    # setter for: Lcom/liquable/nemo/cubiehead/ChattingLite;->secretMessageTimerScheduled:Z
    invoke-static {v0, v1}, Lcom/liquable/nemo/cubiehead/ChattingLite;->access$2302(Lcom/liquable/nemo/cubiehead/ChattingLite;Z)Z

    .line 909
    return-void
.end method
