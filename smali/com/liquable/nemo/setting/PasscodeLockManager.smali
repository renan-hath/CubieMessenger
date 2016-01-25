.class public Lcom/liquable/nemo/setting/PasscodeLockManager;
.super Ljava/lang/Object;
.source "PasscodeLockManager.java"

# interfaces
.implements Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;


# static fields
.field private static currentActivity:Ljava/lang/String;

.field private static hasScreenBeenOff:Z

.field private static isPasscodeVerified:Z

.field private static final logger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final mask:Landroid/view/View;

.field private passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/liquable/nemo/setting/PasscodeLockManager;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    .line 76
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    return-void
.end method

.method private addSecureFlag()V
    .locals 2

    .prologue
    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 87
    :cond_0
    return-void
.end method

.method private clearSecureFlag()V
    .locals 2

    .prologue
    .line 112
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public static final hasScreenBeenOff()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->hasScreenBeenOff:Z

    return v0
.end method

.method private static isCurrentActivityEmpty()Z
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static final isNotificationShowContent()Z
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isNotificationShowContent: getPasscode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2}, Lcom/liquable/nemo/util/Pref;->getPasscode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 29
    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->getPasscode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static final isPasscodeVerified()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    return v0
.end method

.method private static sameAsCurrentActivity(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final setHasScreenBeenOff(Z)V
    .locals 3
    .param p0, "value"    # Z

    .prologue
    .line 53
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHasScreenBeenOff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 54
    sput-boolean p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->hasScreenBeenOff:Z

    .line 55
    return-void
.end method

.method private static final setPasscodeVerified(Z)V
    .locals 0
    .param p0, "verified"    # Z

    .prologue
    .line 58
    sput-boolean p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    .line 59
    return-void
.end method


# virtual methods
.method public checkPasscode()V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "check: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " off:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 94
    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->hasScreenBeenOff()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->hasSetPasscode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->hasScreenBeenOff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/liquable/nemo/setting/PasscodeLockDialog;

    iget-object v1, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/setting/PasscodeLockDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    .line 98
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-virtual {v0, p0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->setVerifyListener(Lcom/liquable/nemo/setting/PasscodeLockDialog$IPasscodeVerifyListener;)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->showDialog()V

    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->passcodeDialog:Lcom/liquable/nemo/setting/PasscodeLockDialog;

    invoke-virtual {v0}, Lcom/liquable/nemo/setting/PasscodeLockDialog;->dismissDialog()V

    .line 106
    :cond_3
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    invoke-direct {p0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->clearSecureFlag()V

    goto :goto_0
.end method

.method public onEnterCorrectPasscode()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 120
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setPasscodeVerified(Z)V

    .line 121
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setHasScreenBeenOff(Z)V

    .line 122
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-direct {p0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->clearSecureFlag()V

    .line 124
    return-void
.end method

.method public onFailEnteringCorrectPasscode()V
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    const v1, 0x7f0d03c6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    return-void
.end method

.method public passcodeOnActivityResult()V
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnActivityResult before: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setPasscodeVerified(Z)V

    .line 137
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnActivityResult after: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public passcodeOnPause()V
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->hasSetPasscode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->addSecureFlag()V

    .line 146
    :cond_0
    return-void
.end method

.method public passcodeOnStart()V
    .locals 3

    .prologue
    .line 149
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnStart before: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/liquable/nemo/setting/PasscodeLockManager;->isCurrentActivityEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setPasscodeVerified(Z)V

    .line 157
    :goto_0
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 158
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnStart after: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 161
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setPasscodeVerified(Z)V

    goto :goto_0
.end method

.method public passcodeOnStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 164
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnStop before: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->sameAsCurrentActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setCurrentActivity(Landroid/app/Activity;)V

    .line 169
    invoke-static {v3}, Lcom/liquable/nemo/setting/PasscodeLockManager;->setPasscodeVerified(Z)V

    .line 171
    :cond_0
    sget-object v0, Lcom/liquable/nemo/setting/PasscodeLockManager;->logger:Lcom/liquable/nemo/util/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "passcodeOnStop after: activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->currentActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " verified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/liquable/nemo/setting/PasscodeLockManager;->isPasscodeVerified:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v0}, Lcom/liquable/nemo/util/Pref;->hasSetPasscode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/liquable/nemo/setting/PasscodeLockManager;->mask:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_1
    return-void
.end method
