.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/app/Crittercism$b;,
        Lcom/crittercism/app/Crittercism$d;,
        Lcom/crittercism/app/Crittercism$a;,
        Lcom/crittercism/app/Crittercism$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static c:Lcom/crittercism/app/Crittercism;


# instance fields
.field private A:Ljava/lang/Thread;

.field final b:Landroid/os/Handler;

.field private d:Lcrittercism/android/b;

.field private e:Lcrittercism/android/d;

.field private f:Lcrittercism/android/e;

.field private g:Z

.field private h:Landroid/content/Context;

.field private i:F

.field private j:Lcrittercism/android/i;

.field private k:Lcrittercism/android/m;

.field private l:Lcrittercism/android/k;

.field private m:Lcrittercism/android/l;

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/crittercism/app/Crittercism;

    invoke-direct {v0}, Lcom/crittercism/app/Crittercism;-><init>()V

    sput-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    invoke-static {}, Lcrittercism/android/d;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/crittercism/app/Crittercism;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->g:Z

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/crittercism/app/Crittercism;->i:F

    new-instance v0, Lcrittercism/android/i;

    invoke-direct {v0}, Lcrittercism/android/i;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    new-instance v0, Lcrittercism/android/m;

    invoke-direct {v0}, Lcrittercism/android/m;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    new-instance v0, Lcrittercism/android/k;

    invoke-direct {v0}, Lcrittercism/android/k;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    new-instance v0, Lcrittercism/android/l;

    invoke-direct {v0}, Lcrittercism/android/l;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->n:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->o:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->p:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->q:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->r:Z

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->s:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->t:Ljava/lang/String;

    iput v1, p0, Lcom/crittercism/app/Crittercism;->u:I

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->v:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;

    const-string/jumbo v0, "Developer Reply"

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;

    const-string/jumbo v0, "com.crittercism/dumps"

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->y:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/crittercism/app/Crittercism;->z:Z

    iput-object v2, p0, Lcom/crittercism/app/Crittercism;->A:Ljava/lang/Thread;

    new-instance v0, Lcom/crittercism/app/Crittercism$4;

    invoke-direct {v0, p0}, Lcom/crittercism/app/Crittercism$4;-><init>(Lcom/crittercism/app/Crittercism;)V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A()V
    .locals 3

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v1, "com.crittercism.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "crashedOnLastAppLoad"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "crashedOnLastAppLoad"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private B()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "1.0"

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private C()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/util/Date;)J
    .locals 4

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.s"

    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "longFormat = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\tdate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Lcom/crittercism/app/Crittercism;
    .locals 1

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    return-object v0
.end method

.method static synthetic a(Lcom/crittercism/app/Crittercism;)V
    .locals 5

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v1, "breadcrumbsFileString"

    invoke-static {v0, v1}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string/jumbo v1, "session_start"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "current_session"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string/jumbo v1, "current_session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    :try_start_2
    const-string/jumbo v2, "previous_session"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "current_session"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Breadcrumbs: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v2, "breadcrumbsFileString"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_2
.end method

.method static synthetic a(Lcom/crittercism/app/Crittercism;Ljava/lang/String;)V
    .locals 6

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->n:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v1, "breadcrumbsFileString"

    invoke-static {v0, v1}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v3, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-static {}, Lcom/crittercism/app/Crittercism;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v2, "current_session"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_1
    const-string/jumbo v1, "current_session"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_3
    :try_start_3
    const-string/jumbo v2, "current_session"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Breadcrumbs: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentSessionJsonArray size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v2, "breadcrumbsFileString"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_2
    move-exception v0

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_4

    :cond_3
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_1

    :cond_4
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/crittercism/app/Crittercism;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/Crittercism;->n:Z

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->c(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/crittercism/app/Crittercism;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/crittercism/app/Crittercism;->o:Z

    return-void
.end method

.method static synthetic b(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->d(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/crittercism/app/Crittercism;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/crittercism/app/Crittercism;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/crittercism/app/Crittercism;Z)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/crittercism/app/CrittercismNDK;->installNdkLib(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception installing ndk library: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->s:Z

    return v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "com.crittercism.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "optOutStatus"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic d(Lcom/crittercism/app/Crittercism;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->A:Ljava/lang/Thread;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "com.crittercism.prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v0, "crashedOnLastAppLoad"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "crashedOnLastAppLoad"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception when trying to retrieve crashedOnLastAppLoad from SharedPreferences! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "read crashedOnLastAppLoad as: "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string/jumbo v1, "true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0

    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_0
.end method

.method public static didCrashOnLastAppLoad()Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Crittercism"

    const-string/jumbo v2, "Call to didCrashOnLastAppLoad() failed.  Please contact us at support@crittercism.com."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    :try_start_0
    sget-object v1, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v1, Lcom/crittercism/app/Crittercism;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic e(Lcom/crittercism/app/Crittercism;)Lcrittercism/android/b;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    return-object v0
.end method

.method public static getNotificationTitle()Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "Developer Reply"

    sget-object v1, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v1, :cond_0

    const-string/jumbo v1, "Crittercism"

    const-string/jumbo v2, "Call to getNotificationTitle failed.  Please contact us at support@crittercism.com."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v2, "Call to getOptOutStatus() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$11;

    invoke-direct {v0}, Lcom/crittercism/app/Crittercism$11;-><init>()V

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x9c4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in getOptOutStatus: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move v0, v1

    goto :goto_2
.end method

.method public static getUserUUID()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v2, "Call to getUserUUID failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$2;

    invoke-direct {v0}, Lcom/crittercism/app/Crittercism$2;-><init>()V

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move-object v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x9c4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :cond_1
    :goto_2
    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in getUserUUID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v0, v1

    goto :goto_2
.end method

.method public static varargs declared-synchronized init(Landroid/content/Context;Ljava/lang/String;[Lorg/json/JSONObject;)Z
    .locals 11

    const/4 v7, 0x0

    const-class v9, Lcom/crittercism/app/Crittercism;

    monitor-enter v9

    :try_start_0
    const-string/jumbo v0, "CRITTERCISM_APP_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "ERROR: Crittercism will not work unless you enter a valid Crittercism App ID. Check your settings page to find the ID."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v7

    :goto_0
    monitor-exit v9

    return v0

    :cond_0
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    array-length v1, p2

    if-lez v1, :cond_a

    const/4 v0, 0x0

    aget-object v0, p2, v0

    move-object v8, v0

    :goto_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->g:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_8

    :try_start_2
    sget-object v10, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    const/4 v0, 0x1

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->g:Z

    iput-object p0, v10, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-direct {v10}, Lcom/crittercism/app/Crittercism;->B()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->t:Ljava/lang/String;

    invoke-direct {v10}, Lcom/crittercism/app/Crittercism;->C()I

    move-result v0

    iput v0, v10, Lcom/crittercism/app/Crittercism;->u:I

    const-string/jumbo v0, "customVersionName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_3
    const-string/jumbo v0, "customVersionName"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->v:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_2
    :try_start_4
    new-instance v0, Lcrittercism/android/b;

    sget-object v3, Lcom/crittercism/app/Crittercism;->a:Ljava/lang/String;

    iget-object v4, v10, Lcom/crittercism/app/Crittercism;->t:Ljava/lang/String;

    iget v5, v10, Lcom/crittercism/app/Crittercism;->u:I

    iget-object v6, v10, Lcom/crittercism/app/Crittercism;->v:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcrittercism/android/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    iget-object v0, v10, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->e()F

    move-result v0

    iput v0, v10, Lcom/crittercism/app/Crittercism;->i:F

    iget-object v0, v10, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    if-nez v0, :cond_2

    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0}, Lcrittercism/android/d;-><init>()V

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    :cond_2
    invoke-static {p0}, Lcrittercism/android/a;->a(Landroid/content/Context;)V

    const-string/jumbo v0, "installNdk"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    :try_start_5
    const-string/jumbo v0, "installNdk"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->r:Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    :goto_3
    :try_start_6
    const-string/jumbo v0, "nativeDumpPath"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_7
    const-string/jumbo v0, "nativeDumpPath"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->y:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_4
    :goto_4
    :try_start_8
    const-string/jumbo v0, "delaySendingAppLoad"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v0

    if-eqz v0, :cond_9

    :try_start_9
    const-string/jumbo v0, "delaySendingAppLoad"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->z:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_5
    :try_start_a
    const-string/jumbo v0, "shouldCollectLogcat"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_b
    const-string/jumbo v0, "shouldCollectLogcat"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->p:Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    :goto_6
    :try_start_c
    const-string/jumbo v0, "notificationTitle"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v0

    if-eqz v0, :cond_6

    :try_start_d
    const-string/jumbo v0, "notificationTitle"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_6
    :goto_7
    :try_start_e
    invoke-static {}, Lcom/crittercism/app/Crittercism;->getNotificationTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "initialize: notification title is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v0, "shouldUseAmazonMarket"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v0

    if-eqz v0, :cond_7

    :try_start_f
    const-string/jumbo v0, "shouldUseAmazonMarket"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->q:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_7
    :goto_8
    :try_start_10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crittercism/app/Crittercism$1;

    invoke-direct {v1, v10}, Lcom/crittercism/app/Crittercism$1;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->A:Ljava/lang/Thread;

    iget-object v0, v10, Lcom/crittercism/app/Crittercism;->A:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Crittercism Initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/crittercism/app/Crittercism;->didCrashOnLastAppLoad()Z

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->v:Ljava/lang/String;

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :cond_8
    move v0, v7

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->r:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_3
    move-exception v0

    const/4 v0, 0x0

    :try_start_11
    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->r:Z

    goto/16 :goto_3

    :catch_4
    move-exception v0

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->z:Z

    goto/16 :goto_5

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->p:Z

    goto :goto_6

    :catch_6
    move-exception v0

    const-string/jumbo v0, "Developer Reply"

    iput-object v0, v10, Lcom/crittercism/app/Crittercism;->x:Ljava/lang/String;

    goto :goto_7

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/crittercism/app/Crittercism;->q:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_8

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :cond_a
    move-object v8, v0

    goto/16 :goto_1
.end method

.method public static declared-synchronized leaveBreadcrumb(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x8c

    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v2, "Call to leaveBreadcrumb() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    if-nez p0, :cond_1

    :try_start_1
    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v2, "Cannot leave null breadcrumb"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/crittercism/app/Crittercism$b;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_2

    const/4 v3, 0x0

    const/16 v4, 0x8c

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    invoke-direct {v2, p0}, Lcom/crittercism/app/Crittercism$b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized logHandledException(Ljava/lang/Throwable;)V
    .locals 9

    const/16 v4, 0x32

    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v2, "Call to logHandledException() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/crittercism/app/Crittercism;->getOptOutStatus()Z

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    iget v0, v0, Lcrittercism/android/k;->h:I

    if-ge v0, v4, :cond_0

    iget-object v0, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v0}, Lcrittercism/android/k;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    iget-object v0, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v0}, Lcrittercism/android/k;->e()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v3, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    iget v3, v3, Lcrittercism/android/k;->h:I

    add-int/2addr v0, v3

    if-ge v0, v4, :cond_0

    iget-object v3, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, ""

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3, p0}, Lcrittercism/android/k;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v3}, Lcrittercism/android/k;->d()V

    invoke-virtual {v3}, Lcrittercism/android/k;->g()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    const-string/jumbo v5, "app_state"

    sget-object v6, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v6, v6, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    const/4 v7, 0x2

    new-array v7, v7, [Z

    fill-array-data v7, :array_0

    invoke-virtual {v6, v7}, Lcrittercism/android/b;->a([Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "breadcrumbs"

    iget-object v6, v3, Lcrittercism/android/k;->f:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "current_thread_id"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v5, "exception_name"

    iget-object v6, v3, Lcrittercism/android/k;->c:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v5, "exception_reason"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "platform"

    const-string/jumbo v5, "android"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "threads"

    iget-object v5, v3, Lcrittercism/android/k;->e:Lorg/json/JSONArray;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ts"

    invoke-static {}, Lcom/crittercism/app/Crittercism;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    const-string/jumbo v0, "type"

    sget-object v5, Lcrittercism/android/a$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    const-string/jumbo v0, "unsymbolized_stacktrace"

    iget-object v5, v3, Lcrittercism/android/k;->d:Lorg/json/JSONArray;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {v3, v4}, Lcrittercism/android/k;->a(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v2, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    iget-object v0, v0, Lcrittercism/android/k;->g:Ljava/util/Date;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_0

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/crittercism/app/Crittercism;->a(Ljava/util/Date;)J

    move-result-wide v3

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/util/Date;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xea60

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/crittercism/app/Crittercism$8;

    invoke-direct {v3, v2}, Lcom/crittercism/app/Crittercism$8;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in logHandledExceptionInstanceMethod: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception in addThrowableToVector: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    iput-object v5, v3, Lcrittercism/android/k;->c:Ljava/lang/String;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, v3, Lcrittercism/android/k;->d:Lorg/json/JSONArray;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, v3, Lcrittercism/android/k;->e:Lorg/json/JSONArray;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, v3, Lcrittercism/android/k;->f:Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_7
    const-string/jumbo v0, "type"

    sget-object v5, Lcrittercism/android/a$a;->d:Ljava/lang/String;

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "JSONException in addThrowableToVector: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :catch_4
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception in addThrowableToVector: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public static sendAppLoadData()V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_1

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Failed to send app load data.  Please contact us at support@crittercism.com"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->z:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/crittercism/app/Crittercism;->getOptOutStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crittercism/app/Crittercism$5;

    invoke-direct {v1}, Lcom/crittercism/app/Crittercism$5;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Call to setMetadata() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0, p0}, Lcrittercism/android/b;->c(Lorg/json/JSONObject;)V

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->g:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    new-instance v1, Lcom/crittercism/app/Crittercism$3;

    invoke-direct {v1, v0, p0}, Lcom/crittercism/app/Crittercism$3;-><init>(Lcom/crittercism/app/Crittercism;Lorg/json/JSONObject;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Initialize the Crittercism library before using its methods."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Call to setOptOutStatus() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/crittercism/app/Crittercism$d;

    invoke-direct {v1, p0}, Lcom/crittercism/app/Crittercism$d;-><init>(Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Call to setUsername() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->g:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    new-instance v1, Lcrittercism/android/e;

    invoke-direct {v1}, Lcrittercism/android/e;-><init>()V

    iput-object v1, v0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    :cond_1
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iput-object p0, v0, Lcrittercism/android/e;->b:Ljava/lang/String;

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v0, v0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->i()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "username"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->setMetadata(Lorg/json/JSONObject;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Initialize the Crittercism library before using its methods."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static x()Z
    .locals 1

    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-boolean v0, v0, Lcom/crittercism/app/Crittercism;->p:Z

    goto :goto_0
.end method

.method public static z()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss.sZ"

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcrittercism/android/i;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    return-void
.end method

.method public final a(Lcrittercism/android/k;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    return-void
.end method

.method public final a(Lcrittercism/android/l;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    return-void
.end method

.method public final a(Lcrittercism/android/m;)V
    .locals 0

    iput-object p1, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/Throwable;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, p1}, Lcrittercism/android/m;->a(Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Lcrittercism/android/m;->d()V

    invoke-virtual {v1}, Lcrittercism/android/m;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string/jumbo v3, "app_state"

    sget-object v4, Lcom/crittercism/app/Crittercism;->c:Lcom/crittercism/app/Crittercism;

    iget-object v4, v4, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    const/4 v5, 0x2

    new-array v5, v5, [Z

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Lcrittercism/android/b;->a([Z)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "breadcrumbs"

    iget-object v4, v1, Lcrittercism/android/m;->f:Lorg/json/JSONObject;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "current_thread_id"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "exception_name"

    iget-object v4, v1, Lcrittercism/android/m;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "exception_reason"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "threads"

    iget-object v3, v1, Lcrittercism/android/m;->e:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ts"

    invoke-static {}, Lcom/crittercism/app/Crittercism;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    const-string/jumbo v0, "type"

    sget-object v3, Lcrittercism/android/a$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    const-string/jumbo v0, "unsymbolized_stacktrace"

    iget-object v3, v1, Lcrittercism/android/m;->d:Lorg/json/JSONArray;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    invoke-virtual {v1, v2}, Lcrittercism/android/m;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->g()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception in addThrowableToVector: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, v1, Lcrittercism/android/m;->c:Ljava/lang/String;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, v1, Lcrittercism/android/m;->d:Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iput-object v3, v1, Lcrittercism/android/m;->e:Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iput-object v3, v1, Lcrittercism/android/m;->f:Lorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_5
    const-string/jumbo v0, "type"

    sget-object v3, Lcrittercism/android/a$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "JSONException in addThrowableToVector: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Exception in addThrowableToVector: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    invoke-virtual {v0}, Lcrittercism/android/i;->b()V

    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/app/Crittercism;->z:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/crittercism/app/Crittercism;->getOptOutStatus()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->e()Z

    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->g()Z

    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->i()Z

    invoke-virtual {p0}, Lcom/crittercism/app/Crittercism;->k()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/app/Crittercism;->s:Z

    return-void
.end method

.method public final e()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$6;

    invoke-direct {v0, p0}, Lcom/crittercism/app/Crittercism$6;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x9c4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->h()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    invoke-virtual {v0}, Lcrittercism/android/i;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sentAppLoads = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo v0, "TRUE"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in startAppLoadsThreads when attempting to flush pending appLoads: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "FALSE"

    goto :goto_3
.end method

.method public final f()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    invoke-virtual {v5}, Lcrittercism/android/i;->c()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v3

    :goto_0
    :try_start_1
    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v5, v3}, Lcrittercism/android/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :try_start_2
    const-string/jumbo v3, "success"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "success"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result v3

    if-ne v3, v1, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->h()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    invoke-virtual {v0}, Lcrittercism/android/i;->f()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move v0, v1

    :cond_0
    move v3, v0

    :goto_1
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string/jumbo v0, "me"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "me"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/e;->a(Lorg/json/JSONObject;)Lcrittercism/android/e;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    :try_start_6
    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iget-object v5, v5, Lcrittercism/android/e;->b:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iget-object v2, v2, Lcrittercism/android/e;->b:Ljava/lang/String;

    :cond_1
    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iput-object v2, v0, Lcrittercism/android/e;->b:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_2
    :goto_3
    :try_start_7
    const-string/jumbo v0, "app_settings"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "app_settings"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v0, "need_pkg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "settings need_pkg = "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "need_pkg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "true"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v0, "need_pkg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->g()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_3
    :goto_5
    :try_start_8
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iget-object v1, v0, Lcrittercism/android/e;->a:Ljava/lang/String;

    const-string/jumbo v2, ""

    iput-object v2, v0, Lcrittercism/android/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pop notification: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "username: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->f:Lcrittercism/android/e;

    iget-object v2, v2, Lcrittercism/android/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->b:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    return v3

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v0

    move-object v0, v7

    :goto_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception obtaining or handling response object or clearing pending app loads vector in attemptToSendAppLoads "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v7, v3

    move v3, v4

    move-object v4, v7

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception getting user object in handleAppLoadResponse: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    move-object v0, v2

    goto/16 :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception setting user object in handleAppLoadResponse: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_3

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_6
    :try_start_a
    const-string/jumbo v0, "false"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_4

    :catch_4
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception setting app settings in handleAppLoadResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_5

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Exception with user pop notification! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_6

    :catch_6
    move-exception v3

    move-object v7, v3

    move-object v3, v4

    move v4, v0

    move-object v0, v7

    goto/16 :goto_7

    :catch_7
    move-exception v0

    move-object v3, v4

    move v4, v1

    goto/16 :goto_7

    :catch_8
    move-exception v5

    goto/16 :goto_0
.end method

.method public final g()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$7;

    invoke-direct {v0, p0}, Lcom/crittercism/app/Crittercism$7;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x9c4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    invoke-virtual {v0}, Lcrittercism/android/m;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sentCrashes = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo v0, "TRUE"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in startCrashSendingThreads when attempting to flush pending crashes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "FALSE"

    goto :goto_3
.end method

.method public final h()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    invoke-virtual {v3}, Lcrittercism/android/m;->b()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v3, v2}, Lcrittercism/android/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :try_start_2
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    invoke-virtual {v1}, Lcrittercism/android/m;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception obtaining or handling response object or clearing pending crashes vector in attemptToSendCrashes "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1
.end method

.method public final i()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$9;

    invoke-direct {v0, p0}, Lcom/crittercism/app/Crittercism$9;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x9c4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v2}, Lcrittercism/android/k;->e()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcrittercism/android/k;->a(I)V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v0}, Lcrittercism/android/k;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sentExceptions = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo v0, "TRUE"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in startExceptionSendingThreads when attempting to flush pending exceptions: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "FALSE"

    goto :goto_3
.end method

.method public final j()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v3}, Lcrittercism/android/k;->b()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v3, v0}, Lcrittercism/android/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-ne v0, v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    iget-object v2, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v2}, Lcrittercism/android/k;->e()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Lcrittercism/android/k;->a(I)V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    invoke-virtual {v0}, Lcrittercism/android/k;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v1

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, v1, Lcrittercism/android/k;->g:Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_2
    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception obtaining or handling response object or clearing pending exceptions vector in attemptToSendHandledExceptions "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1
.end method

.method public final k()Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/crittercism/app/Crittercism$10;

    invoke-direct {v0, p0}, Lcom/crittercism/app/Crittercism$10;-><init>(Lcom/crittercism/app/Crittercism;)V

    invoke-direct {v3, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v0, v2

    :goto_0
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    const-wide/16 v4, 0x1f40

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-eqz v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    invoke-virtual {v0}, Lcrittercism/android/l;->b()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    invoke-virtual {v0}, Lcrittercism/android/l;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sentNdkCrashes = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    const-string/jumbo v0, "TRUE"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception in startNdkSendingThreads when attempting to flush pending ndk crashes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "FALSE"

    goto :goto_3
.end method

.method public final l()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    invoke-virtual {v3}, Lcrittercism/android/l;->a()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v3, v2}, Lcrittercism/android/b;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    :goto_2
    if-eqz v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    invoke-virtual {v0}, Lcrittercism/android/l;->b()V

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    invoke-virtual {v0}, Lcrittercism/android/l;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_3
    return v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception obtaining or handling response object or clearing pending ndk filenames vector in attemptToSendNdkCrashes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Exception removing ndk dump files from disk in attemptToSendNdkCrashes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Failed to get app id.  Please contact us at support@crittercism.com."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    return-object v0
.end method

.method public final o()Lcrittercism/android/b;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    return-object v0
.end method

.method public final p()Lcrittercism/android/d;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    return-object v0
.end method

.method public final q()Lcrittercism/android/i;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->j:Lcrittercism/android/i;

    return-object v0
.end method

.method public final r()Lcrittercism/android/m;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->k:Lcrittercism/android/m;

    return-object v0
.end method

.method public final s()Lcrittercism/android/k;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->l:Lcrittercism/android/k;

    return-object v0
.end method

.method public final t()Lcrittercism/android/l;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->m:Lcrittercism/android/l;

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Crittercism"

    const-string/jumbo v1, "Call to getPackageName() failed.  Please contact us at support@crittercism.com."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/Crittercism;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->e:Lcrittercism/android/d;

    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->h:Landroid/content/Context;

    const-string/jumbo v1, "com.crittercism.prefs.did"

    invoke-static {v0, v1}, Lcrittercism/android/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final y()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/Crittercism;->d:Lcrittercism/android/b;

    invoke-virtual {v0}, Lcrittercism/android/b;->f()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method
