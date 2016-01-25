.class public Lcom/liquable/nemo/regist/InputPincodeActivity;
.super Lcom/liquable/nemo/regist/AbstractRegistActivity;
.source "InputPincodeActivity.java"


# static fields
.field private static final ANDROID_PROVIDER_TELEPHONY_SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final KEY_ACCOUNT_CREATED:Ljava/lang/String; = "KEY_ACCOUNT_CREATED"

.field public static final NEED_SYNC_KEY:Ljava/lang/String; = "needSync"

.field protected static final PARAM_COUNTRY_CODE_ISO3166:Ljava/lang/String; = "PARAM_COUNTRY_CODE_ISO3166"

.field protected static final PARAM_INTERNATIONAL_CALLING_CODE:Ljava/lang/String; = "PARAM_INTERNATIONAL_CALLING_CODE"

.field protected static final PARAM_NICKNAME:Ljava/lang/String; = "PARAM_NICKNAME"

.field protected static final PARAM_PHONE_NUMBER:Ljava/lang/String; = "PARAM_PHONE_NUMBER"

.field private static final RESTORE_DATA:I = 0x6

.field private static final WAITING_CREATE_ACCOUNT_KEY:I


# instance fields
.field private countryCodeIso3166:Ljava/lang/String;

.field private internationalCallingCode:Ljava/lang/String;

.field private isBroadcastReceiverRegistered:Z

.field private nickname:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private pincodeEditText:Landroid/widget/EditText;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;-><init>()V

    .line 62
    new-instance v0, Lcom/liquable/nemo/regist/InputPincodeActivity$1;

    invoke-direct {v0, p0}, Lcom/liquable/nemo/regist/InputPincodeActivity$1;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity;)V

    iput-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/regist/InputPincodeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/regist/InputPincodeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->applyAccount()V

    return-void
.end method

.method static synthetic access$200(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->countryCodeIso3166:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/liquable/nemo/regist/InputPincodeActivity;Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;
    .param p1, "x1"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V

    return-void
.end method

.method static synthetic access$600(Lcom/liquable/nemo/regist/InputPincodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/regist/InputPincodeActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->internationalCallingCode:Ljava/lang/String;

    return-object v0
.end method

.method private applyAccount()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/liquable/nemo/regist/InputPincodeActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/liquable/nemo/regist/InputPincodeActivity$2;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity$2;->execute([Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public static getProfileDtoFromResult(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    const-string/jumbo v0, "profileDto"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/model/account/ProfileDto;

    return-object v0
.end method

.method private registBroadcastReceiver()V
    .locals 2

    .prologue
    .line 293
    iget-boolean v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->isBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 296
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->isBroadcastReceiverRegistered:Z

    .line 297
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 298
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setResultOkAndFinish(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 303
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "profileDto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 305
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->setResult(ILandroid/content/Intent;)V

    .line 307
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->finish()V

    .line 308
    return-void
.end method

.method private startRestoreDataActivity(Lcom/liquable/nemo/model/account/ProfileDto;)V
    .locals 2
    .param p1, "profileDto"    # Lcom/liquable/nemo/model/account/ProfileDto;

    .prologue
    .line 311
    new-instance v0, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;

    invoke-direct {v0, p0, p1}, Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;-><init>(Landroid/content/Context;Lcom/liquable/nemo/model/account/ProfileDto;)V

    .line 313
    .local v0, "createIntent":Lcom/liquable/nemo/regist/RestoreDataActivity$CreateIntent;
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 314
    return-void
.end method

.method private unregistBroadcastReceiver()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->isBroadcastReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->isBroadcastReceiverRegistered:Z

    .line 321
    iget-object v0, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 140
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->finish()V

    .line 165
    :goto_0
    return-void

    .line 145
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-static {p3}, Lcom/liquable/nemo/regist/RestoreDataActivity;->getProfileDtoFromResult(Landroid/content/Intent;)Lcom/liquable/nemo/model/account/ProfileDto;

    move-result-object v1

    .line 148
    .local v1, "restoreDataProfile":Lcom/liquable/nemo/model/account/ProfileDto;
    invoke-virtual {v1}, Lcom/liquable/nemo/model/account/ProfileDto;->getAccount()Lcom/liquable/nemo/model/account/AccountDto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/liquable/nemo/model/account/AccountDto;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    :try_start_0
    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "nickname is null"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    if-eqz v1, :cond_2

    .line 156
    invoke-direct {p0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->setResultOkAndFinish(Lcom/liquable/nemo/model/account/ProfileDto;)V

    goto :goto_0

    .line 158
    :cond_2
    const v2, 0x7f0d01c6

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 159
    invoke-virtual {p0, v4}, Lcom/liquable/nemo/regist/InputPincodeActivity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->finish()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 169
    packed-switch p1, :pswitch_data_0

    .line 173
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    const v1, 0x7f0d0539

    invoke-static {p0, v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->createProgressDialog(Landroid/content/Context;ZI)Landroid/app/ProgressDialog;

    move-result-object v0

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->unregistBroadcastReceiver()V

    .line 179
    invoke-super {p0}, Lcom/liquable/nemo/regist/AbstractRegistActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method protected onNotLoggedInCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 184
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 185
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    const v7, 0x7f0d0500

    invoke-virtual {p0, v7}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 186
    const v6, 0x7f030034

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->setContentView(I)V

    .line 188
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 189
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "PARAM_PHONE_NUMBER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;

    .line 190
    const-string/jumbo v6, "PARAM_INTERNATIONAL_CALLING_CODE"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->internationalCallingCode:Ljava/lang/String;

    .line 191
    const-string/jumbo v6, "PARAM_COUNTRY_CODE_ISO3166"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->countryCodeIso3166:Ljava/lang/String;

    .line 192
    const-string/jumbo v6, "PARAM_NICKNAME"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->nickname:Ljava/lang/String;

    .line 193
    iget-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->nickname:Ljava/lang/String;

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    :try_start_0
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "nickname is null"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->logHandledException(Ljava/lang/Throwable;)V

    .line 201
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const v6, 0x7f08009d

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 202
    .local v3, "inputtedPhoneNumber":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->internationalCallingCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v6, 0x7f0800d9

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 206
    .local v5, "sendSmsBtn":Landroid/widget/Button;
    const v6, 0x7f0800d4

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 207
    .local v1, "descriptionTextView":Landroid/widget/TextView;
    const v6, 0x7f0d018b

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    const v9, 0x7f0d047e

    .line 208
    invoke-virtual {p0, v9}, Lcom/liquable/nemo/regist/InputPincodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 207
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    new-instance v6, Lcom/liquable/nemo/regist/InputPincodeActivity$3;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/regist/InputPincodeActivity$3;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v6, 0x7f08009f

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/liquable/nemo/regist/InputPincodeActivity;->pincodeEditText:Landroid/widget/EditText;

    .line 255
    const v6, 0x7f0800d6

    invoke-virtual {p0, v6}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 256
    .local v0, "applyAccountBtn":Landroid/widget/Button;
    new-instance v6, Lcom/liquable/nemo/regist/InputPincodeActivity$4;

    invoke-direct {v6, p0}, Lcom/liquable/nemo/regist/InputPincodeActivity$4;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    invoke-direct {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->registBroadcastReceiver()V

    .line 269
    return-void
.end method

.method protected onNotLoggedResume()V
    .locals 2

    .prologue
    .line 273
    const v1, 0x7f0800d3

    invoke-virtual {p0, v1}, Lcom/liquable/nemo/regist/InputPincodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    .line 274
    .local v0, "inputPincodeScrollView":Landroid/widget/ScrollView;
    new-instance v1, Lcom/liquable/nemo/regist/InputPincodeActivity$5;

    invoke-direct {v1, p0, v0}, Lcom/liquable/nemo/regist/InputPincodeActivity$5;-><init>(Lcom/liquable/nemo/regist/InputPincodeActivity;Landroid/widget/ScrollView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 280
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/actionbarsherlock/view/MenuItem;

    .prologue
    .line 284
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 286
    :pswitch_0
    invoke-virtual {p0}, Lcom/liquable/nemo/regist/InputPincodeActivity;->finish()V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
