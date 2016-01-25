.class Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;
.super Ljava/lang/Object;
.source "ChatGroupSettingActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->onSettingCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 62
    iget-object v3, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    invoke-static {v3}, Lcom/liquable/nemo/widget/CustomAlertDialogBuilder;->create(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 63
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 66
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;->this$0:Lcom/liquable/nemo/setting/ChatGroupSettingActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 67
    .local v9, "layoutInflater":Landroid/view/LayoutInflater;
    const v3, 0x7f03009e

    const/4 v5, 0x0

    invoke-virtual {v9, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 69
    .local v1, "dialogView":Landroid/view/View;
    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v3

    array-length v3, v3

    new-array v7, v3, [Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;

    .line 70
    .local v7, "controls":[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v3

    array-length v3, v3

    if-ge v8, v3, :cond_1

    .line 71
    new-instance v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;

    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->layoutResId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 72
    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v3

    aget-object v3, v3, v8

    iget v3, v3, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->checkBoxId:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 73
    # getter for: Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->fontSizeConfig:[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;
    invoke-static {}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity;->access$000()[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;

    move-result-object v10

    aget-object v10, v10, v8

    iget v10, v10, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeConfig;->fontSize:I

    invoke-direct {v6, v5, v3, v10}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;-><init>(Landroid/view/View;Landroid/widget/CheckBox;I)V

    .line 74
    .local v6, "control":Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;
    iget-object v5, v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->checkbox:Landroid/widget/CheckBox;

    iget v3, v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->fontSize:I

    sget-object v10, Lcom/liquable/nemo/NemoManagers;->pref:Lcom/liquable/nemo/util/Pref;

    invoke-virtual {v10}, Lcom/liquable/nemo/util/Pref;->getFontSize()I

    move-result v10

    if-ne v3, v10, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 75
    iget-object v3, v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->layout:Landroid/view/View;

    iget v5, v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->fontSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    iget-object v3, v6, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;->layout:Landroid/view/View;

    new-instance v5, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;

    invoke-direct {v5, p0, v7, v0}, Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1$1;-><init>(Lcom/liquable/nemo/setting/ChatGroupSettingActivity$1;[Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    aput-object v6, v7, v8

    .line 70
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 74
    goto :goto_1

    .end local v6    # "control":Lcom/liquable/nemo/setting/ChatGroupSettingActivity$FontSizeControl;
    :cond_1
    move v3, v2

    move v4, v2

    move v5, v2

    .line 91
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 92
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 94
    return v2
.end method
