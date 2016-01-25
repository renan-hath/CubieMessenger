.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$controls:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;

    iput-object p2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->val$controls:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;

    iput-object p3, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 80
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->val$controls:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;

    aget-object v2, v2, v0

    iget-object v3, v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->checkbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->val$controls:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->fontSize:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 83
    :cond_1
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v2, v1}, Lcom/liquable/nemo/util/Pref;->setFontSize(I)V

    .line 84
    iget-object v2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->this$1:Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;

    iget-object v2, v2, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    const v3, 0x7f0d028a

    invoke-static {v2, v3}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    .line 85
    iget-object v2, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    return-void
.end method
