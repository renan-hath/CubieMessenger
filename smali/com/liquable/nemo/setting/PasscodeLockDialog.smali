.class public Lcom/liquable/nemo/setting/PasscodeLockDialog;
.super Ljava/lang/Object;
.source "PasscodeLockDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;,
        Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;
    }
.end annotation


# static fields
.field public static final MODE_CONFIRM:I = 0x10

.field public static final MODE_CREATE:I = 0x1

.field public static final MODE_VERIFY:I = 0x2

.field public static final TAG:Ljava/lang/String; = "PasscodeLockDialog"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private createListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;

.field private final dialog:Landroid/app/Dialog;

.field private final dialogTitle:Landroid/widget/TextView;

.field private final mode:I

.field private final passcodeEditText1:Landroid/widget/EditText;

.field private final passcodeEditText2:Landroid/widget/EditText;

.field private final passcodeEditText3:Landroid/widget/EditText;

.field private final passcodeEditText4:Landroid/widget/EditText;

.field private passcodeEnteredFirst:Ljava/lang/String;

.field private state:I

.field private verifyListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "_mode"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->activity:Landroid/app/Activity;

    .line 59
    iput p2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->mode:I

    .line 60
    iput p2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300a1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "contentView":Landroid/view/View;
    const v2, 0x1020014

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    .line 65
    const v2, 0x1020015

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    .line 66
    const v2, 0x1020019

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    .line 67
    const v2, 0x102001a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    .line 68
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 69
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 70
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 73
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 75
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    const v2, 0x1020005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialogTitle:Landroid/widget/TextView;

    .line 78
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0e009e

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    .line 80
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 82
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 83
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 84
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 86
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    new-instance v3, Lcom/liquable/nemo/setting/PasscodeLockDialog$1;

    invoke-direct {v3, p0}, Lcom/liquable/nemo/setting/PasscodeLockDialog$1;-><init>(Lcom/liquable/nemo/setting/PasscodeLockDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->reset()V

    .line 96
    iget-object v2, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/liquable/nemo/setting/PasscodeLockDialog$2;-><init>(Lcom/liquable/nemo/setting/PasscodeLockDialog;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/liquable/nemo/setting/PasscodeLockDialog;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/liquable/nemo/setting/PasscodeLockDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .prologue
    .line 20
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->mode:I

    return v0
.end method

.method private enteredAllDigits(Ljava/lang/String;)V
    .locals 3
    .param p1, "passcodeEntered"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x1

    .line 143
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    if-ne v0, v1, :cond_1

    .line 144
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEnteredFirst:Ljava/lang/String;

    .line 145
    invoke-direct {p0, v2}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->reset(I)V

    .line 168
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void

    .line 147
    :cond_1
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    if-ne v0, v2, :cond_3

    .line 148
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEnteredFirst:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->createListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;

    invoke-interface {v0, p1}, Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;->onCreatePasscode(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 157
    :goto_1
    iput v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->createListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;

    invoke-interface {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;->onFailToCreatePasscode()V

    goto :goto_1

    .line 158
    :cond_3
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getPasscode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 160
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->verifyListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;

    invoke-interface {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;->onEnterCorrectPasscode()V

    .line 161
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->verifyListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;

    invoke-interface {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;->onFailEnteringCorrectPasscode()V

    goto :goto_0
.end method

.method private reset(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 219
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEnteredFirst:Ljava/lang/String;

    .line 221
    :cond_0
    iput p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    .line 223
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialogTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->getTitleForMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 230
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v5, 0x0

    .line 113
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 130
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 120
    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 122
    :cond_3
    const-string/jumbo v1, "%c%c%c%c"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    .line 123
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    .line 124
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    .line 125
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    .line 126
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    .line 122
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "passcodeEntered":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->enteredAllDigits(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 136
    return-void
.end method

.method public dismissDialog()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 140
    return-void
.end method

.method public getEntryDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method protected getTitleForMode()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->state:I

    sparse-switch v0, :sswitch_data_0

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 181
    :sswitch_0
    const v0, 0x7f0d03c2

    goto :goto_0

    .line 183
    :sswitch_1
    const v0, 0x7f0d03c1

    goto :goto_0

    .line 185
    :sswitch_2
    const v0, 0x7f0d03c3

    goto :goto_0

    .line 179
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 196
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x43

    if-ne p2, v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText1:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 207
    :goto_1
    return v0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText2:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText4:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->passcodeEditText3:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 211
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->mode:I

    invoke-direct {p0, v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->reset(I)V

    .line 215
    return-void
.end method

.method public final setCreateListener(Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;)V
    .locals 0
    .param p1, "createListener"    # Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->createListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeCreateListener;

    .line 234
    return-void
.end method

.method public final setVerifyListener(Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;)V
    .locals 0
    .param p1, "verifyListener"    # Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->verifyListener:Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;

    .line 238
    return-void
.end method

.method public showDialog()V
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->reset()V

    .line 242
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 243
    return-void
.end method
