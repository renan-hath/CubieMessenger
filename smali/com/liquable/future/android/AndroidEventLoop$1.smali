.class Lcom/liquable/future/android/AndroidEventLoop$1;
.super Landroid/os/AsyncTask;
.source "AndroidEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/android/AndroidEventLoop;->addAsync(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/android/AndroidEventLoop;

.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/liquable/future/android/AndroidEventLoop;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/android/AndroidEventLoop;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/liquable/future/android/AndroidEventLoop$1;->this$0:Lcom/liquable/future/android/AndroidEventLoop;

    iput-object p2, p0, Lcom/liquable/future/android/AndroidEventLoop$1;->val$task:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/future/android/AndroidEventLoop$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/future/android/AndroidEventLoop$1;->val$task:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 60
    const/4 v0, 0x0

    return-object v0
.end method
