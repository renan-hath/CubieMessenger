.class Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;
.super Ljava/lang/Thread;
.source "KeepConnectionAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;->interruptConnection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

.field final synthetic val$keepEndPointClient:Lcom/liquable/nemo/client/EndPointClient;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;Lcom/liquable/nemo/client/EndPointClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    .prologue
    .line 203
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;"
    iput-object p1, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;->this$0:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;->val$keepEndPointClient:Lcom/liquable/nemo/client/EndPointClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;, "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;"
    iget-object v0, p0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$2;->val$keepEndPointClient:Lcom/liquable/nemo/client/EndPointClient;

    invoke-virtual {v0}, Lcom/liquable/nemo/client/EndPointClient;->interrupt()V

    .line 207
    return-void
.end method
