.class Lcom/liquable/future/android/example/ExampleActivity$1;
.super Ljava/lang/Object;
.source "ExampleActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/android/example/ExampleActivity;->findAnswerOfUniverse()Lcom/liquable/future/IFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/android/example/ExampleActivity;


# direct methods
.method constructor <init>(Lcom/liquable/future/android/example/ExampleActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/android/example/ExampleActivity;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/liquable/future/android/example/ExampleActivity$1;->this$0:Lcom/liquable/future/android/example/ExampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/liquable/future/android/example/ExampleActivity$1;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v0, "42"

    return-object v0
.end method
