.class Lcom/aviary/android/feather/widget/IAPDialog$3;
.super Ljava/lang/Object;
.source "IAPDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/widget/IAPDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/widget/IAPDialog;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/widget/IAPDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/widget/IAPDialog;

    .prologue
    .line 674
    iput-object p1, p0, Lcom/aviary/android/feather/widget/IAPDialog$3;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/aviary/android/feather/widget/IAPDialog$3;->this$0:Lcom/aviary/android/feather/widget/IAPDialog;

    # invokes: Lcom/aviary/android/feather/widget/IAPDialog;->handleHide()V
    invoke-static {v0}, Lcom/aviary/android/feather/widget/IAPDialog;->access$1400(Lcom/aviary/android/feather/widget/IAPDialog;)V

    .line 678
    return-void
.end method
