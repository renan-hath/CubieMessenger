.class final Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;
.super Ljava/lang/Object;
.source "ConnectPhonePincodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnConnectPhoneBtnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;


# direct methods
.method private constructor <init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;
    .param p2, "x1"    # Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;-><init>(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity$OnConnectPhoneBtnClickListener;->this$0:Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;

    # invokes: Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->connectPhone()V
    invoke-static {v0}, Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;->access$000(Lcom/liquable/nemo/phone/ConnectPhonePincodeActivity;)V

    .line 60
    return-void
.end method
