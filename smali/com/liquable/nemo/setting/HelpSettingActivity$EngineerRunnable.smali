.class abstract Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EngineerRunnable"
.end annotation


# instance fields
.field private preference:Landroid/preference/Preference;

.field private summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    iput-object p2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->title:Ljava/lang/String;

    .line 415
    iput-object p3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->summary:Ljava/lang/String;

    .line 416
    return-void
.end method


# virtual methods
.method public final executeFunction()V
    .locals 0

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->run()V

    .line 421
    return-void
.end method

.method public final showInPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->preference:Landroid/preference/Preference;

    .line 426
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->summary:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 430
    :cond_0
    return-void
.end method

.method public final updateSummary(Ljava/lang/String;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->summary:Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->preference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 437
    :cond_0
    return-void
.end method

.method public final updateTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->title:Ljava/lang/String;

    .line 441
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerRunnable;->preference:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 444
    :cond_0
    return-void
.end method
