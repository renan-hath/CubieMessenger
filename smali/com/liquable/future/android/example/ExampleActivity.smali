.class Lcom/liquable/future/android/example/ExampleActivity;
.super Lcom/liquable/future/android/example/ExampleBaseActivity;
.source "ExampleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/liquable/future/android/example/ExampleBaseActivity;-><init>()V

    return-void
.end method

.method private findAnswerOfUniverse()Lcom/liquable/future/IFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    new-instance v0, Lcom/liquable/future/android/example/ExampleActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/future/android/example/ExampleActivity$1;-><init>(Lcom/liquable/future/android/example/ExampleActivity;)V

    invoke-static {v0}, Lcom/liquable/future/Futures;->async(Ljava/util/concurrent/Callable;)Lcom/liquable/future/IFuture;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 29
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 34
    invoke-direct {p0}, Lcom/liquable/future/android/example/ExampleActivity;->findAnswerOfUniverse()Lcom/liquable/future/IFuture;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/liquable/future/android/example/ExampleActivity;->addToSession(Lcom/liquable/future/IFuture;)Lcom/liquable/future/IFuture;

    move-result-object v1

    new-instance v2, Lcom/liquable/future/android/example/ExampleActivity$4;

    invoke-direct {v2, p0}, Lcom/liquable/future/android/example/ExampleActivity$4;-><init>(Lcom/liquable/future/android/example/ExampleActivity;)V

    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v1

    const-class v2, Ljava/lang/Exception;

    new-instance v3, Lcom/liquable/future/android/example/ExampleActivity$3;

    invoke-direct {v3, p0}, Lcom/liquable/future/android/example/ExampleActivity$3;-><init>(Lcom/liquable/future/android/example/ExampleActivity;)V

    .line 41
    invoke-interface {v1, v2, v3}, Lcom/liquable/future/IFuture;->consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;

    move-result-object v1

    new-instance v2, Lcom/liquable/future/android/example/ExampleActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/liquable/future/android/example/ExampleActivity$2;-><init>(Lcom/liquable/future/android/example/ExampleActivity;Landroid/app/ProgressDialog;)V

    .line 48
    invoke-interface {v1, v2}, Lcom/liquable/future/IFuture;->whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;

    .line 57
    return-void
.end method
