.class Lcom/liquable/future/android/example/ExampleActivity$3;
.super Ljava/lang/Object;
.source "ExampleActivity.java"

# interfaces
.implements Lcom/liquable/future/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/android/example/ExampleActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Consumer",
        "<",
        "Ljava/lang/Exception;",
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
    .line 41
    iput-object p1, p0, Lcom/liquable/future/android/example/ExampleActivity$3;->this$0:Lcom/liquable/future/android/example/ExampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Exception;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleActivity$3;->this$0:Lcom/liquable/future/android/example/ExampleActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ouch - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 47
    return-void
.end method

.method public bridge synthetic run(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/liquable/future/android/example/ExampleActivity$3;->run(Ljava/lang/Exception;)V

    return-void
.end method
