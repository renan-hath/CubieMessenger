.class Lcom/liquable/nemo/regist/InputPhoneNumberActivity$7;
.super Ljava/lang/Object;
.source "InputPhoneNumberActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->onNotLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$7;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 312
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPhoneNumberActivity$7;->this$0:Lcom/liquable/nemo/regist/InputPhoneNumberActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->applyPincode()V
    invoke-static {v0}, Lcom/liquable/nemo/regist/InputPhoneNumberActivity;->access$600(Lcom/liquable/nemo/regist/InputPhoneNumberActivity;)V

    .line 314
    const/4 v0, 0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
