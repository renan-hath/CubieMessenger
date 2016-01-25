.class abstract Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "HelpSettingActivity.java"

# interfaces
.implements Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/setting/HelpSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "EngineerAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "TProgress;TResult;>;",
        "Lcom/liquable/nemo/setting/HelpSettingActivity$IEngineerFunction;"
    }
.end annotation


# instance fields
.field private final summary:Ljava/lang/String;

.field final synthetic this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/setting/HelpSettingActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;

    .prologue
    .line 98
    .local p0, "this":Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;, "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask<TProgress;TResult;>;"
    iput-object p1, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->this$0:Lcom/liquable/nemo/setting/HelpSettingActivity;

    .line 99
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    .line 100
    iput-object p2, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->title:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->summary:Ljava/lang/String;

    .line 102
    return-void
.end method


# virtual methods
.method public final executeFunction()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;, "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask<TProgress;TResult;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->execute([Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected postExecute()V
    .locals 0

    .prologue
    .line 111
    .local p0, "this":Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;, "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask<TProgress;TResult;>;"
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;, "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask<TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method public final showInPreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 119
    .local p0, "this":Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;, "Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask<TProgress;TResult;>;"
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->summary:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/liquable/nemo/setting/HelpSettingActivity$EngineerAsyncTask;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    return-void
.end method
