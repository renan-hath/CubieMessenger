.class Lcom/liquable/nemo/phone/ConnectPhoneActivity$3;
.super Ljava/lang/Object;
.source "ConnectPhoneActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/phone/ConnectPhoneActivity;->onLoggedInCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$3;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

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
    .line 143
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhoneActivity$3;->this$0:Lcom/liquable/nemo/phone/ConnectPhoneActivity;

    # invokes: Lcom/liquable/nemo/phone/ConnectPhoneActivity;->applyPincode()V
    invoke-static {v0}, Lcom/liquable/nemo/phone/ConnectPhoneActivity;->access$400(Lcom/liquable/nemo/phone/ConnectPhoneActivity;)V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
