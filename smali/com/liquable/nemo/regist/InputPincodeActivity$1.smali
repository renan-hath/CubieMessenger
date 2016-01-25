.class Lcom/liquable/nemo/regist/InputPincodeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InputPincodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/regist/InputPincodeActivity;
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
    .line 62
    iput-object p1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const-string/jumbo v8, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v8, "pdus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v6, v8

    check-cast v6, [Ljava/lang/Object;

    .line 68
    .local v6, "pdus":[Ljava/lang/Object;
    array-length v8, v6

    new-array v4, v8, [Landroid/telephony/SmsMessage;

    .line 69
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    const-string/jumbo v8, ":(\\d{4})"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 71
    .local v5, "p":Ljava/util/regex/Pattern;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, v6

    if-ge v2, v8, :cond_1

    .line 72
    aget-object v8, v6, v2

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v4, v2

    .line 73
    aget-object v8, v4, v2

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "body":Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 75
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 76
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    .local v7, "pincode":Ljava/lang/String;
    iget-object v8, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v8, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 71
    .end local v7    # "pincode":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "body":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_1
    iget-object v8, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # getter for: Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;
    invoke-static {v8}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_2

    .line 82
    iget-object v8, p0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;->this$0:Lcom/liquable/nemo/regist/InputPincodeActivity;

    # invokes: Lcom/liquable/nemo/regist/InputPincodeActivity;->applyAccount()V
    invoke-static {v8}, Lcom/liquable/nemo/regist/InputPincodeActivity;->access$100(Lcom/liquable/nemo/regist/InputPincodeActivity;)V

    .line 85
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "i":I
    .end local v4    # "messages":[Landroid/telephony/SmsMessage;
    .end local v5    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "pdus":[Ljava/lang/Object;
    :cond_2
    return-void
.end method
