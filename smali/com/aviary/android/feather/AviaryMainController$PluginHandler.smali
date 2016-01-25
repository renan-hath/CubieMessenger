.class Lcom/aviary/android/feather/AviaryMainController$PluginHandler;
.super Landroid/os/Handler;
.source "AviaryMainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/AviaryMainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginHandler"
.end annotation


# instance fields
.field mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/aviary/android/feather/library/services/IAviaryController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/IAviaryController;)V
    .locals 1
    .param p1, "context"    # Lcom/aviary/android/feather/library/services/IAviaryController;

    .prologue
    .line 1136
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/aviary/android/feather/AviaryMainController$PluginHandler;->mContext:Ljava/lang/ref/WeakReference;

    .line 1138
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1143
    iget-object v9, p0, Lcom/aviary/android/feather/AviaryMainController$PluginHandler;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/aviary/android/feather/library/services/IAviaryController;

    .line 1144
    .local v3, "effectContext":Lcom/aviary/android/feather/library/services/IAviaryController;
    if-eqz v3, :cond_0

    .line 1146
    invoke-interface {v3}, Lcom/aviary/android/feather/library/services/IAviaryController;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1147
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/aviary/android/feather/library/plugins/UpdateType;

    .line 1148
    .local v7, "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    const-class v9, Lcom/aviary/android/feather/library/services/PluginService;

    invoke-interface {v3, v9}, Lcom/aviary/android/feather/library/services/IAviaryController;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/aviary/android/feather/library/services/PluginService;

    .line 1150
    .local v6, "service":Lcom/aviary/android/feather/library/services/PluginService;
    invoke-virtual {v7}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1151
    .local v4, "packagename":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPluginType()I

    move-result v5

    .line 1152
    .local v5, "pluginType":I
    invoke-virtual {v7}, Lcom/aviary/android/feather/library/plugins/UpdateType;->getPackageVersionCode()I

    move-result v8

    .line 1154
    .local v8, "versionCode":I
    const-string/jumbo v9, "filter-manager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PluginHandler::handleMessage. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->what:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", update:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/aviary/android/feather/library/plugins/UpdateType;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 1182
    .end local v0    # "context":Landroid/content/Context;
    .end local v4    # "packagename":Ljava/lang/String;
    .end local v5    # "pluginType":I
    .end local v6    # "service":Lcom/aviary/android/feather/library/services/PluginService;
    .end local v7    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .end local v8    # "versionCode":I
    :cond_0
    :goto_0
    return-void

    .line 1159
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v4    # "packagename":Ljava/lang/String;
    .restart local v5    # "pluginType":I
    .restart local v6    # "service":Lcom/aviary/android/feather/library/services/PluginService;
    .restart local v7    # "update":Lcom/aviary/android/feather/library/plugins/UpdateType;
    .restart local v8    # "versionCode":I
    :pswitch_0
    :try_start_0
    invoke-virtual {v6, v0, v4, v8, v5}, Lcom/aviary/android/feather/library/services/PluginService;->install(Landroid/content/Context;Ljava/lang/String;II)Z
    :try_end_0
    .catch Lcom/aviary/android/feather/library/services/PluginService$PluginException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1160
    :catch_0
    move-exception v2

    .line 1161
    .local v2, "e1":Lcom/aviary/android/feather/library/services/PluginService$PluginException;
    invoke-virtual {v2}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->printStackTrace()V

    goto :goto_0

    .line 1166
    .end local v2    # "e1":Lcom/aviary/android/feather/library/services/PluginService$PluginException;
    :pswitch_1
    invoke-virtual {v6, v0, v4}, Lcom/aviary/android/feather/library/services/PluginService;->uninstall(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    .line 1170
    :pswitch_2
    invoke-virtual {v6, v0, v4}, Lcom/aviary/android/feather/library/services/PluginService;->uninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1172
    :try_start_1
    invoke-virtual {v6, v0, v4, v8, v5}, Lcom/aviary/android/feather/library/services/PluginService;->install(Landroid/content/Context;Ljava/lang/String;II)Z
    :try_end_1
    .catch Lcom/aviary/android/feather/library/services/PluginService$PluginException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1173
    :catch_1
    move-exception v1

    .line 1174
    .local v1, "e":Lcom/aviary/android/feather/library/services/PluginService$PluginException;
    invoke-virtual {v1}, Lcom/aviary/android/feather/library/services/PluginService$PluginException;->printStackTrace()V

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
