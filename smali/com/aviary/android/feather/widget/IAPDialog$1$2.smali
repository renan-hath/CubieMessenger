.class Lcom/aviary/android/feather/widget/IAPDialog$1$2;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/widget/IAPDialog$1;->onFutureDone(Ljava/util/concurrent/Future;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/aviary/android/feather/widget/IAPDialog$1;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$2;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$1$2;->this$1:Lcom/aviary/android/feather/widget/IAPDialog$1;

    iget-object v0, v0, Lcom/aviary/android/feather/widget/IAPDialog$1;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # invokes: Lcom/aviary/android/feather/widget/IAPDialog;->onDownloadError()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$600(Lcom/aviary/android/feather/widget/IAPDialog;)V

    .line 401
    return-void
.end method
