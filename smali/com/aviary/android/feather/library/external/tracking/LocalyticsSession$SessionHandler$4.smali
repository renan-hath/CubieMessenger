.class Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

.field private final synthetic val$attributes:Ljava/util/Map;

.field private final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    .line 1126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-object v1, v1, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->mProvider:Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;

    invoke-static {v1}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->getOpenSessionId(Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1132
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1176
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 1142
    const/4 v0, 0x0

    .line 1172
    .local v0, "openCloseAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->open(ZLjava/util/Map;)V

    .line 1173
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    iget-object v2, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$event:Ljava/lang/String;

    iget-object v3, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    invoke-virtual {v1, v2, v3}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1174
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->this$1:Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;

    invoke-virtual {v1, v0}, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler;->close(Ljava/util/Map;)V

    goto :goto_0

    .line 1144
    .end local v0    # "openCloseAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1145
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1146
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1147
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1149
    :cond_3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1150
    .restart local v0    # "openCloseAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1152
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_1:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    :cond_4
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1156
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_2:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    :cond_5
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1160
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_3:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    :cond_6
    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1164
    sget-object v2, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    iget-object v1, p0, Lcom/aviary/android/feather/library/external/tracking/LocalyticsSession$SessionHandler$4;->val$attributes:Ljava/util/Map;

    sget-object v3, Lcom/aviary/android/feather/library/external/tracking/LocalyticsProvider$AttributesDbColumns;->ATTRIBUTE_CUSTOM_DIMENSION_4:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1169
    .end local v0    # "openCloseAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const/4 v0, 0x0

    .restart local v0    # "openCloseAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto/16 :goto_1
.end method
