.class Lcom/liquable/nemo/regist/InputPincodeActivity$3;
.super Ljava/lang/Object;
.source "InputPincodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPincodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    new-instance v0, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;

    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$3;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity$3;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 249
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity$3$1;->execute([Ljava/lang/Object;)V

    .line 250
    return-void
.end method
