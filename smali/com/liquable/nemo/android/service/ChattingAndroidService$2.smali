.class Lcom/liquable/nemo/android/service/ChattingAndroidService$2;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Lcom/liquable/nemo/client/ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/nemo/client/ReceiveDataListener",
        "<",
        "Lcom/liquable/nemo/endpoint/frame/ReceiveText;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/ChattingAndroidService;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceive(Lcom/liquable/nemo/endpoint/frame/IEpFrame;)V
    .locals 0

    .prologue
    .line 120
    check-cast p1, Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$2;->onReceive(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)V

    return-void
.end method

.method public onReceive(Lcom/liquable/nemo/endpoint/frame/ReceiveText;)V
    .locals 2
    .param p1, "frame"    # Lcom/liquable/nemo/endpoint/frame/ReceiveText;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$2;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    new-instance v1, Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;

    invoke-direct {v1, p0, p1}, Lcom/liquable/nemo/android/service/ChattingAndroidService$2$1;-><init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$2;Lcom/liquable/nemo/endpoint/frame/ReceiveText;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method
