.class Lcom/liquable/future/android/example/ExampleActivity$2;
.super Ljava/lang/Object;
.source "ExampleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/future/android/example/ExampleActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/future/android/example/ExampleActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/liquable/future/android/example/ExampleActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/future/android/example/ExampleActivity;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/liquable/future/android/example/ExampleActivity$2;->this$0:Lcom/liquable/future/android/example/ExampleActivity;

    iput-object p2, p0, Lcom/liquable/future/android/example/ExampleActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/future/android/example/ExampleActivity$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 55
    return-void
.end method
