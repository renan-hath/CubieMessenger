.class Lcom/liquable/nemo/android/service/ChattingAndroidService$8$1;
.super Ljava/lang/Object;
.source "ChattingAndroidService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/ChattingAndroidService$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$8;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/ChattingAndroidService$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/android/service/ChattingAndroidService$8;

    .prologue
    .line 339
    iput-object p1, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8$1;->this$1:Lcom/liquable/nemo/android/service/ChattingAndroidService$8;

    iget-object v0, v0, Lcom/liquable/nemo/android/service/ChattingAndroidService$8;->this$0:Lcom/liquable/nemo/android/service/ChattingAndroidService;

    # invokes: Lcom/liquable/nemo/android/service/ChattingAndroidService;->fetchOfflineMessageIfNeeded()V
    invoke-static {v0}, Lcom/liquable/nemo/android/service/ChattingAndroidService;->access$500(Lcom/liquable/nemo/android/service/ChattingAndroidService;)V

    .line 343
    return-void
.end method
