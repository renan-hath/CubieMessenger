.class Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;
.super Ljava/lang/Object;
.source "DetectExternalImageIntentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

.field final synthetic val$picInfo:Lcom/liquable/nemo/android/provider/PictureInfo;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;Lcom/liquable/nemo/android/provider/PictureInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;->this$0:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    iput-object p2, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;->val$picInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;->this$0:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->access$400(Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "picture_info"

    iget-object v2, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;->val$picInfo:Lcom/liquable/nemo/android/provider/PictureInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    sget-object v1, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->DETECTED:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;

    invoke-virtual {v1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$Action;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver$1;->this$0:Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;

    # getter for: Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;->access$400(Lcom/liquable/nemo/android/service/DetectExternalImageIntentService$ExternalImageObserver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 182
    return-void
.end method
