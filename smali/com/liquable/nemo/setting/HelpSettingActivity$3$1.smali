.class Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;
.super Ljava/lang/Object;
.source "HelpSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity$3;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$3;

.field final synthetic val$engFunc:Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity$3;Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/HelpSettingActivity$3;

    .prologue
    .line 850
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;->this$1:Lcom/liquable/nemo/setting/HelpSettingActivity$3;

    iput-object p2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;->val$engFunc:Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 853
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$3$1;->val$engFunc:Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;

    invoke-interface {v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;->executeFunction()V

    .line 854
    const/4 v0, 0x1

    return v0
.end method
