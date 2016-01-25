.class final Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;
.super Ljava/lang/Object;
.source "InviteFriendDialogs.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/friend/view/InviteFriendDialogs;->show(Landroid/content/Context;Lcom/liquable/nemo/android/provider/StrequentContactInfo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$via:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/android/provider/StrequentContactInfo;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    iput-object p2, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$via:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;
    .param p1, "x1"    # Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    .param p2, "x2"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->sendSms(Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V

    return-void
.end method

.method private sendSms(Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V
    .locals 8
    .param p1, "contactInfo"    # Lcom/liquable/nemo/android/provider/StrequentContactInfo;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 45
    iget-object v0, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "SMS_SENT_ACTION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 49
    .local v4, "sentPI":Landroid/app/PendingIntent;
    invoke-static {}, Lcom/liquable/nemo/analytics/AnalyticsServices;->getInstance()Lcom/liquable/nemo/analytics/IAnalyticsService;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$via:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/liquable/nemo/analytics/IAnalyticsService;->shareAppBySms(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getNumbers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$context:Landroid/content/Context;

    const v5, 0x7f0d048f

    .line 52
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    .line 53
    invoke-virtual {v6}, Lcom/liquable/nemo/util/Pref;->getUsername()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    sget-object v7, Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;->sms:Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;

    .line 54
    invoke-static {v7}, Lcom/liquable/nemo/util/CubieProfileUrl;->getUrl(Lcom/liquable/nemo/util/CubieProfileUrl$TrackingKey;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 52
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    .line 50
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 57
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    invoke-virtual {v0}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    .line 31
    invoke-virtual {v1}, Lcom/liquable/nemo/android/provider/StrequentContactInfo;->getNumberArray()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;

    invoke-direct {v2, p0}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1$1;-><init>(Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->val$contactInfo:Lcom/liquable/nemo/android/provider/StrequentContactInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/liquable/nemo/friend/view/InviteFriendDialogs$1;->sendSms(Lcom/liquable/nemo/android/provider/StrequentContactInfo;I)V

    goto :goto_0
.end method
