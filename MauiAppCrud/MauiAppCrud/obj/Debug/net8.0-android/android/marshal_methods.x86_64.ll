; ModuleID = 'marshal_methods.x86_64.ll'
source_filename = "marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [324 x ptr] zeroinitializer, align 16

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [648 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 231
	i64 98382396393917666, ; 1: Microsoft.Extensions.Primitives.dll => 0x15d8644ad360ce2 => 188
	i64 120698629574877762, ; 2: Mono.Android => 0x1accec39cafe242 => 168
	i64 131669012237370309, ; 3: Microsoft.Maui.Essentials.dll => 0x1d3c844de55c3c5 => 193
	i64 196720943101637631, ; 4: System.Linq.Expressions.dll => 0x2bae4a7cd73f3ff => 57
	i64 210515253464952879, ; 5: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 218
	i64 229794953483747371, ; 6: System.ValueTuple.dll => 0x330654aed93802b => 148
	i64 232391251801502327, ; 7: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 259
	i64 295915112840604065, ; 8: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 262
	i64 316157742385208084, ; 9: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 225
	i64 350667413455104241, ; 10: System.ServiceProcess.dll => 0x4ddd227954be8f1 => 131
	i64 396868157601372792, ; 11: Microsoft.VisualStudio.DesignTools.TapContract => 0x581f57c947e5a78 => 322
	i64 422779754995088667, ; 12: System.IO.UnmanagedMemoryStream => 0x5de03f27ab57d1b => 55
	i64 435118502366263740, ; 13: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x609d9f8f8bdb9bc => 261
	i64 545109961164950392, ; 14: fi/Microsoft.Maui.Controls.resources.dll => 0x7909e9f1ec38b78 => 293
	i64 560278790331054453, ; 15: System.Reflection.Primitives => 0x7c6829760de3975 => 94
	i64 634308326490598313, ; 16: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 244
	i64 649145001856603771, ; 17: System.Security.SecureString => 0x90239f09b62167b => 128
	i64 750875890346172408, ; 18: System.Threading.Thread => 0xa6ba5a4da7d1ff8 => 142
	i64 798450721097591769, ; 19: Xamarin.AndroidX.Collection.Ktx.dll => 0xb14aab351ad2bd9 => 219
	i64 799765834175365804, ; 20: System.ComponentModel.dll => 0xb1956c9f18442ac => 18
	i64 849051935479314978, ; 21: hi/Microsoft.Maui.Controls.resources.dll => 0xbc8703ca21a3a22 => 296
	i64 870603111519317375, ; 22: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 197
	i64 872800313462103108, ; 23: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 230
	i64 895210737996778430, ; 24: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0xc6c6d6c5569cbbe => 245
	i64 940822596282819491, ; 25: System.Transactions => 0xd0e792aa81923a3 => 147
	i64 960778385402502048, ; 26: System.Runtime.Handles.dll => 0xd555ed9e1ca1ba0 => 103
	i64 1010599046655515943, ; 27: System.Reflection.Primitives.dll => 0xe065e7a82401d27 => 94
	i64 1120440138749646132, ; 28: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 274
	i64 1121665720830085036, ; 29: nb/Microsoft.Maui.Controls.resources.dll => 0xf90f507becf47ac => 304
	i64 1268860745194512059, ; 30: System.Drawing.dll => 0x119be62002c19ebb => 35
	i64 1301485588176585670, ; 31: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 196
	i64 1301626418029409250, ; 32: System.Diagnostics.FileVersionInfo => 0x12104e54b4e833e2 => 27
	i64 1315114680217950157, ; 33: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 214
	i64 1369545283391376210, ; 34: Xamarin.AndroidX.Navigation.Fragment.dll => 0x13019a2dd85acb52 => 252
	i64 1404195534211153682, ; 35: System.IO.FileSystem.Watcher.dll => 0x137cb4660bd87f12 => 49
	i64 1425944114962822056, ; 36: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 114
	i64 1476839205573959279, ; 37: System.Net.Primitives.dll => 0x147ec96ece9b1e6f => 69
	i64 1486715745332614827, ; 38: Microsoft.Maui.Controls.dll => 0x14a1e017ea87d6ab => 190
	i64 1492954217099365037, ; 39: System.Net.HttpListener => 0x14b809f350210aad => 64
	i64 1513467482682125403, ; 40: Mono.Android.Runtime => 0x1500eaa8245f6c5b => 167
	i64 1518315023656898250, ; 41: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 198
	i64 1537168428375924959, ; 42: System.Threading.Thread.dll => 0x15551e8a954ae0df => 142
	i64 1556147632182429976, ; 43: ko/Microsoft.Maui.Controls.resources.dll => 0x15988c06d24c8918 => 302
	i64 1576750169145655260, ; 44: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x15e1bdecc376bfdc => 273
	i64 1624659445732251991, ; 45: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 213
	i64 1628611045998245443, ; 46: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 248
	i64 1636321030536304333, ; 47: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 238
	i64 1651782184287836205, ; 48: System.Globalization.Calendars => 0x16ec4f2524cb982d => 39
	i64 1659332977923810219, ; 49: System.Reflection.DispatchProxy => 0x1707228d493d63ab => 88
	i64 1672383392659050004, ; 50: Microsoft.Data.Sqlite.dll => 0x17357fd5bfb48e14 => 172
	i64 1682513316613008342, ; 51: System.Net.dll => 0x17597cf276952bd6 => 80
	i64 1735388228521408345, ; 52: System.Net.Mail.dll => 0x181556663c69b759 => 65
	i64 1743969030606105336, ; 53: System.Memory.dll => 0x1833d297e88f2af8 => 61
	i64 1767386781656293639, ; 54: System.Private.Uri.dll => 0x188704e9f5582107 => 85
	i64 1795316252682057001, ; 55: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 212
	i64 1825687700144851180, ; 56: System.Runtime.InteropServices.RuntimeInformation.dll => 0x1956254a55ef08ec => 105
	i64 1835311033149317475, ; 57: es\Microsoft.Maui.Controls.resources => 0x197855a927386163 => 292
	i64 1836611346387731153, ; 58: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 259
	i64 1854145951182283680, ; 59: System.Runtime.CompilerServices.VisualC => 0x19bb3feb3df2e3a0 => 101
	i64 1875417405349196092, ; 60: System.Drawing.Primitives => 0x1a06d2319b6c713c => 34
	i64 1875917498431009007, ; 61: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 209
	i64 1881198190668717030, ; 62: tr\Microsoft.Maui.Controls.resources => 0x1a1b5bc992ea9be6 => 314
	i64 1897575647115118287, ; 63: Xamarin.AndroidX.Security.SecurityCrypto => 0x1a558aff4cba86cf => 261
	i64 1920760634179481754, ; 64: Microsoft.Maui.Controls.Xaml => 0x1aa7e99ec2d2709a => 191
	i64 1930726298510463061, ; 65: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 170
	i64 1959996714666907089, ; 66: tr/Microsoft.Maui.Controls.resources.dll => 0x1b334ea0a2a755d1 => 314
	i64 1972385128188460614, ; 67: System.Security.Cryptography.Algorithms => 0x1b5f51d2edefbe46 => 118
	i64 1981742497975770890, ; 68: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 246
	i64 1983698669889758782, ; 69: cs/Microsoft.Maui.Controls.resources.dll => 0x1b87836e2031a63e => 288
	i64 2019660174692588140, ; 70: pl/Microsoft.Maui.Controls.resources.dll => 0x1c07463a6f8e1a6c => 306
	i64 2040001226662520565, ; 71: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 139
	i64 2062890601515140263, ; 72: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 138
	i64 2064708342624596306, ; 73: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x1ca7514c5eecb152 => 282
	i64 2080945842184875448, ; 74: System.IO.MemoryMappedFiles => 0x1ce10137d8416db8 => 52
	i64 2102659300918482391, ; 75: System.Drawing.Primitives.dll => 0x1d2e257e6aead5d7 => 34
	i64 2106033277907880740, ; 76: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 138
	i64 2165310824878145998, ; 77: Xamarin.Android.Glide.GifDecoder => 0x1e0cbab9112b81ce => 206
	i64 2165725771938924357, ; 78: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 216
	i64 2192948757939169934, ; 79: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x1e6eeb46cf992a8e => 174
	i64 2200176636225660136, ; 80: Microsoft.Extensions.Logging.Debug.dll => 0x1e8898fe5d5824e8 => 186
	i64 2262844636196693701, ; 81: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 230
	i64 2287834202362508563, ; 82: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 8
	i64 2287887973817120656, ; 83: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 14
	i64 2302323944321350744, ; 84: ru/Microsoft.Maui.Controls.resources.dll => 0x1ff37f6ddb267c58 => 310
	i64 2304837677853103545, ; 85: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 258
	i64 2315304989185124968, ; 86: System.IO.FileSystem.dll => 0x20219d9ee311aa68 => 50
	i64 2329709569556905518, ; 87: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 241
	i64 2335503487726329082, ; 88: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 201
	i64 2337758774805907496, ; 89: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 100
	i64 2470498323731680442, ; 90: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 223
	i64 2479423007379663237, ; 91: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 268
	i64 2497223385847772520, ; 92: System.Runtime => 0x22a7eb7046413568 => 115
	i64 2547086958574651984, ; 93: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 207
	i64 2592350477072141967, ; 94: System.Xml.dll => 0x23f9e10627330e8f => 160
	i64 2602673633151553063, ; 95: th\Microsoft.Maui.Controls.resources => 0x241e8de13a460e27 => 313
	i64 2624866290265602282, ; 96: mscorlib.dll => 0x246d65fbde2db8ea => 163
	i64 2632269733008246987, ; 97: System.Net.NameResolution => 0x2487b36034f808cb => 66
	i64 2656907746661064104, ; 98: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 181
	i64 2662981627730767622, ; 99: cs\Microsoft.Maui.Controls.resources => 0x24f4cfae6c48af06 => 288
	i64 2706075432581334785, ; 100: System.Net.WebSockets => 0x258de944be6c0701 => 79
	i64 2783046991838674048, ; 101: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 100
	i64 2787234703088983483, ; 102: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 263
	i64 2815524396660695947, ; 103: System.Security.AccessControl => 0x2712c0857f68238b => 116
	i64 2895129759130297543, ; 104: fi\Microsoft.Maui.Controls.resources => 0x282d912d479fa4c7 => 293
	i64 2923871038697555247, ; 105: Jsr305Binding => 0x2893ad37e69ec52f => 275
	i64 3017136373564924869, ; 106: System.Net.WebProxy => 0x29df058bd93f63c5 => 77
	i64 3017704767998173186, ; 107: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 274
	i64 3062772059105072826, ; 108: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0x2a8126f5e2f316ba => 321
	i64 3106852385031680087, ; 109: System.Runtime.Serialization.Xml => 0x2b1dc1c88b637057 => 113
	i64 3110390492489056344, ; 110: System.Security.Cryptography.Csp.dll => 0x2b2a53ac61900058 => 120
	i64 3135773902340015556, ; 111: System.IO.FileSystem.DriveInfo.dll => 0x2b8481c008eac5c4 => 47
	i64 3281594302220646930, ; 112: System.Security.Principal => 0x2d8a90a198ceba12 => 127
	i64 3289520064315143713, ; 113: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 239
	i64 3303437397778967116, ; 114: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 210
	i64 3311221304742556517, ; 115: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 81
	i64 3325875462027654285, ; 116: System.Runtime.Numerics => 0x2e27e21c8958b48d => 109
	i64 3328853167529574890, ; 117: System.Net.Sockets.dll => 0x2e327651a008c1ea => 74
	i64 3344514922410554693, ; 118: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 285
	i64 3429672777697402584, ; 119: Microsoft.Maui.Essentials => 0x2f98a5385a7b1ed8 => 193
	i64 3437845325506641314, ; 120: System.IO.MemoryMappedFiles.dll => 0x2fb5ae1beb8f7da2 => 52
	i64 3493805808809882663, ; 121: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 265
	i64 3494946837667399002, ; 122: Microsoft.Extensions.Configuration => 0x30808ba1c00a455a => 179
	i64 3508450208084372758, ; 123: System.Net.Ping => 0x30b084e02d03ad16 => 68
	i64 3522470458906976663, ; 124: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 264
	i64 3523004241079211829, ; 125: Microsoft.Extensions.Caching.Memory.dll => 0x30e439b10bb89735 => 178
	i64 3531994851595924923, ; 126: System.Numerics => 0x31042a9aade235bb => 82
	i64 3551103847008531295, ; 127: System.Private.CoreLib.dll => 0x31480e226177735f => 169
	i64 3567343442040498961, ; 128: pt\Microsoft.Maui.Controls.resources => 0x3181bff5bea4ab11 => 308
	i64 3571415421602489686, ; 129: System.Runtime.dll => 0x319037675df7e556 => 115
	i64 3638003163729360188, ; 130: Microsoft.Extensions.Configuration.Abstractions => 0x327cc89a39d5f53c => 180
	i64 3647754201059316852, ; 131: System.Xml.ReaderWriter => 0x329f6d1e86145474 => 153
	i64 3655542548057982301, ; 132: Microsoft.Extensions.Configuration.dll => 0x32bb18945e52855d => 179
	i64 3659371656528649588, ; 133: Xamarin.Android.Glide.Annotations => 0x32c8b3222885dd74 => 204
	i64 3716579019761409177, ; 134: netstandard.dll => 0x3393f0ed5c8c5c99 => 164
	i64 3727469159507183293, ; 135: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 257
	i64 3772598417116884899, ; 136: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 231
	i64 3869221888984012293, ; 137: Microsoft.Extensions.Logging.dll => 0x35b23cceda0ed605 => 184
	i64 3869649043256705283, ; 138: System.Diagnostics.Tools => 0x35b3c14d74bf0103 => 31
	i64 3890352374528606784, ; 139: Microsoft.Maui.Controls.Xaml.dll => 0x35fd4edf66e00240 => 191
	i64 3919223565570527920, ; 140: System.Security.Cryptography.Encoding => 0x3663e111652bd2b0 => 121
	i64 3933965368022646939, ; 141: System.Net.Requests => 0x369840a8bfadc09b => 71
	i64 3966267475168208030, ; 142: System.Memory => 0x370b03412596249e => 61
	i64 4006972109285359177, ; 143: System.Xml.XmlDocument => 0x379b9fe74ed9fe49 => 158
	i64 4009997192427317104, ; 144: System.Runtime.Serialization.Primitives => 0x37a65f335cf1a770 => 112
	i64 4073500526318903918, ; 145: System.Private.Xml.dll => 0x3887fb25779ae26e => 87
	i64 4073631083018132676, ; 146: Microsoft.Maui.Controls.Compatibility.dll => 0x388871e311491cc4 => 189
	i64 4120493066591692148, ; 147: zh-Hant\Microsoft.Maui.Controls.resources => 0x392eee9cdda86574 => 319
	i64 4148881117810174540, ; 148: System.Runtime.InteropServices.JavaScript.dll => 0x3993c9651a66aa4c => 104
	i64 4154383907710350974, ; 149: System.ComponentModel => 0x39a7562737acb67e => 18
	i64 4167269041631776580, ; 150: System.Threading.ThreadPool => 0x39d51d1d3df1cf44 => 143
	i64 4168469861834746866, ; 151: System.Security.Claims.dll => 0x39d96140fb94ebf2 => 117
	i64 4187479170553454871, ; 152: System.Linq.Expressions => 0x3a1cea1e912fa117 => 57
	i64 4201423742386704971, ; 153: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 225
	i64 4205801962323029395, ; 154: System.ComponentModel.TypeConverter => 0x3a5e0299f7e7ad93 => 17
	i64 4235503420553921860, ; 155: System.IO.IsolatedStorage.dll => 0x3ac787eb9b118544 => 51
	i64 4282138915307457788, ; 156: System.Reflection.Emit => 0x3b6d36a7ddc70cfc => 91
	i64 4321177614414309855, ; 157: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x3bf7e8254e88e9df => 321
	i64 4337444564132831293, ; 158: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 195
	i64 4356591372459378815, ; 159: vi/Microsoft.Maui.Controls.resources.dll => 0x3c75b8c562f9087f => 316
	i64 4373617458794931033, ; 160: System.IO.Pipes.dll => 0x3cb235e806eb2359 => 54
	i64 4388777479429739993, ; 161: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x3ce811dd63a4d5d9 => 320
	i64 4397634830160618470, ; 162: System.Security.SecureString.dll => 0x3d0789940f9be3e6 => 128
	i64 4477672992252076438, ; 163: System.Web.HttpUtility.dll => 0x3e23e3dcdb8ba196 => 149
	i64 4484706122338676047, ; 164: System.Globalization.Extensions.dll => 0x3e3ce07510042d4f => 40
	i64 4513320955448359355, ; 165: Microsoft.EntityFrameworkCore.Relational => 0x3ea2897f12d379bb => 175
	i64 4533124835995628778, ; 166: System.Reflection.Emit.dll => 0x3ee8e505540534ea => 91
	i64 4612482779465751747, ; 167: Microsoft.EntityFrameworkCore.Abstractions => 0x4002d4a662a99cc3 => 174
	i64 4636684751163556186, ; 168: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 269
	i64 4672453897036726049, ; 169: System.IO.FileSystem.Watcher => 0x40d7e4104a437f21 => 49
	i64 4679594760078841447, ; 170: ar/Microsoft.Maui.Controls.resources.dll => 0x40f142a407475667 => 286
	i64 4716677666592453464, ; 171: System.Xml.XmlSerializer => 0x417501590542f358 => 159
	i64 4743821336939966868, ; 172: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 13
	i64 4759461199762736555, ; 173: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 243
	i64 4794310189461587505, ; 174: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 207
	i64 4795410492532947900, ; 175: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 264
	i64 4809057822547766521, ; 176: System.Drawing => 0x42bd349c3145ecf9 => 35
	i64 4814660307502931973, ; 177: System.Net.NameResolution.dll => 0x42d11c0a5ee2a005 => 66
	i64 4853321196694829351, ; 178: System.Runtime.Loader.dll => 0x435a75ea15de7927 => 108
	i64 5055365687667823624, ; 179: Xamarin.AndroidX.Activity.Ktx.dll => 0x4628444ef7239408 => 208
	i64 5081566143765835342, ; 180: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 98
	i64 5099468265966638712, ; 181: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 98
	i64 5103417709280584325, ; 182: System.Collections.Specialized => 0x46d2fb5e161b6285 => 11
	i64 5129462924058778861, ; 183: Microsoft.Data.Sqlite => 0x472f835a350f5ced => 172
	i64 5182934613077526976, ; 184: System.Collections.Specialized.dll => 0x47ed7b91fa9009c0 => 11
	i64 5205316157927637098, ; 185: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 250
	i64 5244375036463807528, ; 186: System.Diagnostics.Contracts.dll => 0x48c7c34f4d59fc28 => 25
	i64 5262971552273843408, ; 187: System.Security.Principal.dll => 0x4909d4be0c44c4d0 => 127
	i64 5278787618751394462, ; 188: System.Net.WebClient.dll => 0x4942055efc68329e => 75
	i64 5280980186044710147, ; 189: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x4949cf7fd7123d03 => 242
	i64 5290786973231294105, ; 190: System.Runtime.Loader => 0x496ca6b869b72699 => 108
	i64 5376510917114486089, ; 191: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 268
	i64 5408338804355907810, ; 192: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 266
	i64 5423376490970181369, ; 193: System.Runtime.InteropServices.RuntimeInformation => 0x4b43b42f2b7b6ef9 => 105
	i64 5440320908473006344, ; 194: Microsoft.VisualBasic.Core => 0x4b7fe70acda9f908 => 2
	i64 5446034149219586269, ; 195: System.Diagnostics.Debug => 0x4b94333452e150dd => 26
	i64 5451019430259338467, ; 196: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 221
	i64 5457765010617926378, ; 197: System.Xml.Serialization => 0x4bbde05c557002ea => 154
	i64 5471532531798518949, ; 198: sv\Microsoft.Maui.Controls.resources => 0x4beec9d926d82ca5 => 312
	i64 5507995362134886206, ; 199: System.Core.dll => 0x4c705499688c873e => 21
	i64 5522859530602327440, ; 200: uk\Microsoft.Maui.Controls.resources => 0x4ca5237b51eead90 => 315
	i64 5527431512186326818, ; 201: System.IO.FileSystem.Primitives.dll => 0x4cb561acbc2a8f22 => 48
	i64 5570799893513421663, ; 202: System.IO.Compression.Brotli => 0x4d4f74fcdfa6c35f => 42
	i64 5573260873512690141, ; 203: System.Security.Cryptography.dll => 0x4d58333c6e4ea1dd => 125
	i64 5574231584441077149, ; 204: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 211
	i64 5591791169662171124, ; 205: System.Linq.Parallel => 0x4d9a087135e137f4 => 58
	i64 5650097808083101034, ; 206: System.Security.Cryptography.Algorithms.dll => 0x4e692e055d01a56a => 118
	i64 5692067934154308417, ; 207: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 271
	i64 5724799082821825042, ; 208: Xamarin.AndroidX.ExifInterface => 0x4f72926f3e13b212 => 234
	i64 5757522595884336624, ; 209: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 220
	i64 5783556987928984683, ; 210: Microsoft.VisualBasic => 0x504352701bbc3c6b => 3
	i64 5896680224035167651, ; 211: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 240
	i64 5959344983920014087, ; 212: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x52b3d8b05c8ef307 => 260
	i64 5979151488806146654, ; 213: System.Formats.Asn1 => 0x52fa3699a489d25e => 37
	i64 5984759512290286505, ; 214: System.Security.Cryptography.Primitives => 0x530e23115c33dba9 => 123
	i64 6068057819846744445, ; 215: ro/Microsoft.Maui.Controls.resources.dll => 0x5436126fec7f197d => 309
	i64 6102788177522843259, ; 216: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0x54b1758374b3de7b => 260
	i64 6183170893902868313, ; 217: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 195
	i64 6200764641006662125, ; 218: ro\Microsoft.Maui.Controls.resources => 0x560d8a96830131ed => 309
	i64 6222399776351216807, ; 219: System.Text.Json.dll => 0x565a67a0ffe264a7 => 202
	i64 6251069312384999852, ; 220: System.Transactions.Local => 0x56c0426b870da1ac => 146
	i64 6278736998281604212, ; 221: System.Private.DataContractSerialization => 0x57228e08a4ad6c74 => 84
	i64 6284145129771520194, ; 222: System.Reflection.Emit.ILGeneration => 0x5735c4b3610850c2 => 89
	i64 6319713645133255417, ; 223: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 244
	i64 6357457916754632952, ; 224: _Microsoft.Android.Resource.Designer => 0x583a3a4ac2a7a0f8 => 323
	i64 6401687960814735282, ; 225: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 241
	i64 6478287442656530074, ; 226: hr\Microsoft.Maui.Controls.resources => 0x59e7801b0c6a8e9a => 297
	i64 6504860066809920875, ; 227: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 216
	i64 6548213210057960872, ; 228: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 227
	i64 6557084851308642443, ; 229: Xamarin.AndroidX.Window.dll => 0x5aff71ee6c58c08b => 272
	i64 6560151584539558821, ; 230: Microsoft.Extensions.Options => 0x5b0a571be53243a5 => 187
	i64 6589202984700901502, ; 231: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 277
	i64 6591971792923354531, ; 232: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x5b7b636b7e9765a3 => 242
	i64 6617685658146568858, ; 233: System.Text.Encoding.CodePages => 0x5bd6be0b4905fa9a => 132
	i64 6713440830605852118, ; 234: System.Reflection.TypeExtensions.dll => 0x5d2aeeddb8dd7dd6 => 95
	i64 6739853162153639747, ; 235: Microsoft.VisualBasic.dll => 0x5d88c4bde075ff43 => 3
	i64 6743165466166707109, ; 236: nl\Microsoft.Maui.Controls.resources => 0x5d948943c08c43a5 => 305
	i64 6772837112740759457, ; 237: System.Runtime.InteropServices.JavaScript => 0x5dfdf378527ec7a1 => 104
	i64 6777482997383978746, ; 238: pt/Microsoft.Maui.Controls.resources.dll => 0x5e0e74e0a2525efa => 308
	i64 6786606130239981554, ; 239: System.Diagnostics.TraceSource => 0x5e2ede51877147f2 => 32
	i64 6798329586179154312, ; 240: System.Windows => 0x5e5884bd523ca188 => 151
	i64 6814185388980153342, ; 241: System.Xml.XDocument.dll => 0x5e90d98217d1abfe => 155
	i64 6876862101832370452, ; 242: System.Xml.Linq => 0x5f6f85a57d108914 => 152
	i64 6894844156784520562, ; 243: System.Numerics.Vectors => 0x5faf683aead1ad72 => 81
	i64 7011053663211085209, ; 244: Xamarin.AndroidX.Fragment.Ktx => 0x614c442918e5dd99 => 236
	i64 7060896174307865760, ; 245: System.Threading.Tasks.Parallel.dll => 0x61fd57a90988f4a0 => 140
	i64 7083547580668757502, ; 246: System.Private.Xml.Linq.dll => 0x624dd0fe8f56c5fe => 86
	i64 7101497697220435230, ; 247: System.Configuration => 0x628d9687c0141d1e => 19
	i64 7103753931438454322, ; 248: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 237
	i64 7112547816752919026, ; 249: System.IO.FileSystem => 0x62b4d88e3189b1f2 => 50
	i64 7192745174564810625, ; 250: Xamarin.Android.Glide.GifDecoder.dll => 0x63d1c3a0a1d72f81 => 206
	i64 7220009545223068405, ; 251: sv/Microsoft.Maui.Controls.resources.dll => 0x6432a06d99f35af5 => 312
	i64 7270811800166795866, ; 252: System.Linq => 0x64e71ccf51a90a5a => 60
	i64 7299370801165188114, ; 253: System.IO.Pipes.AccessControl.dll => 0x654c9311e74f3c12 => 53
	i64 7316205155833392065, ; 254: Microsoft.Win32.Primitives => 0x658861d38954abc1 => 4
	i64 7338192458477945005, ; 255: System.Reflection => 0x65d67f295d0740ad => 96
	i64 7349431895026339542, ; 256: Xamarin.Android.Glide.DiskLruCache => 0x65fe6d5e9bf88ed6 => 205
	i64 7377312882064240630, ; 257: System.ComponentModel.TypeConverter.dll => 0x66617afac45a2ff6 => 17
	i64 7488575175965059935, ; 258: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 152
	i64 7489048572193775167, ; 259: System.ObjectModel => 0x67ee71ff6b419e3f => 83
	i64 7592577537120840276, ; 260: System.Diagnostics.Process => 0x695e410af5b2aa54 => 28
	i64 7637303409920963731, ; 261: System.IO.Compression.ZipFile.dll => 0x69fd26fcb637f493 => 44
	i64 7654504624184590948, ; 262: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7694700312542370399, ; 263: System.Net.Mail => 0x6ac9112a7e2cda5f => 65
	i64 7708790323521193081, ; 264: ms/Microsoft.Maui.Controls.resources.dll => 0x6afb1ff4d1730479 => 303
	i64 7714652370974252055, ; 265: System.Private.CoreLib => 0x6b0ff375198b9c17 => 169
	i64 7725404731275645577, ; 266: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x6b3626ac11ce9289 => 245
	i64 7735176074855944702, ; 267: Microsoft.CSharp => 0x6b58dda848e391fe => 1
	i64 7735352534559001595, ; 268: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 280
	i64 7791074099216502080, ; 269: System.IO.FileSystem.AccessControl.dll => 0x6c1f749d468bcd40 => 46
	i64 7820441508502274321, ; 270: System.Data => 0x6c87ca1e14ff8111 => 24
	i64 7836164640616011524, ; 271: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 213
	i64 7972383140441761405, ; 272: Microsoft.Extensions.Caching.Abstractions.dll => 0x6ea3983a0b58267d => 177
	i64 8025517457475554965, ; 273: WindowsBase => 0x6f605d9b4786ce95 => 162
	i64 8031450141206250471, ; 274: System.Runtime.Intrinsics.dll => 0x6f757159d9dc03e7 => 107
	i64 8064050204834738623, ; 275: System.Collections.dll => 0x6fe942efa61731bf => 12
	i64 8083354569033831015, ; 276: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 239
	i64 8085230611270010360, ; 277: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 62
	i64 8087206902342787202, ; 278: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 199
	i64 8103644804370223335, ; 279: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 23
	i64 8113615946733131500, ; 280: System.Reflection.Extensions => 0x70995ab73cf916ec => 92
	i64 8167236081217502503, ; 281: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 165
	i64 8185542183669246576, ; 282: System.Collections => 0x7198e33f4794aa70 => 12
	i64 8187640529827139739, ; 283: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 284
	i64 8246048515196606205, ; 284: Microsoft.Maui.Graphics.dll => 0x726fd96f64ee56fd => 194
	i64 8264926008854159966, ; 285: System.Diagnostics.Process.dll => 0x72b2ea6a64a3a25e => 28
	i64 8290740647658429042, ; 286: System.Runtime.Extensions => 0x730ea0b15c929a72 => 102
	i64 8318905602908530212, ; 287: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 14
	i64 8368701292315763008, ; 288: System.Security.Cryptography => 0x7423997c6fd56140 => 125
	i64 8398329775253868912, ; 289: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 222
	i64 8399491414977651389, ; 290: MauiAppCrud => 0x7490fcf083afa2bd => 0
	i64 8400357532724379117, ; 291: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 254
	i64 8410671156615598628, ; 292: System.Reflection.Emit.Lightweight.dll => 0x74b8b4daf4b25224 => 90
	i64 8426919725312979251, ; 293: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 243
	i64 8518412311883997971, ; 294: System.Collections.Immutable => 0x76377add7c28e313 => 9
	i64 8563666267364444763, ; 295: System.Private.Uri => 0x76d841191140ca5b => 85
	i64 8598790081731763592, ; 296: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 233
	i64 8601935802264776013, ; 297: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 266
	i64 8614108721271900878, ; 298: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x778b763e14018ace => 307
	i64 8623059219396073920, ; 299: System.Net.Quic.dll => 0x77ab42ac514299c0 => 70
	i64 8626175481042262068, ; 300: Java.Interop => 0x77b654e585b55834 => 165
	i64 8638972117149407195, ; 301: Microsoft.CSharp.dll => 0x77e3cb5e8b31d7db => 1
	i64 8639588376636138208, ; 302: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 253
	i64 8648495978913578441, ; 303: Microsoft.Win32.Registry.dll => 0x7805a1456889bdc9 => 5
	i64 8677882282824630478, ; 304: pt-BR\Microsoft.Maui.Controls.resources => 0x786e07f5766b00ce => 307
	i64 8684531736582871431, ; 305: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 43
	i64 8725526185868997716, ; 306: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 199
	i64 8853378295825400934, ; 307: Xamarin.Kotlin.StdLib.Common.dll => 0x7add84a720d38466 => 281
	i64 8941376889969657626, ; 308: System.Xml.XDocument => 0x7c1626e87187471a => 155
	i64 8951477988056063522, ; 309: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 256
	i64 8954753533646919997, ; 310: System.Runtime.Serialization.Json => 0x7c45ace50032d93d => 111
	i64 9045785047181495996, ; 311: zh-HK\Microsoft.Maui.Controls.resources => 0x7d891592e3cb0ebc => 317
	i64 9111603110219107042, ; 312: Microsoft.Extensions.Caching.Memory => 0x7e72eac0def44ae2 => 178
	i64 9138683372487561558, ; 313: System.Security.Cryptography.Csp => 0x7ed3201bc3e3d156 => 120
	i64 9250544137016314866, ; 314: Microsoft.EntityFrameworkCore => 0x806088e191ee0bf2 => 173
	i64 9312692141327339315, ; 315: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 271
	i64 9324707631942237306, ; 316: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 212
	i64 9468215723722196442, ; 317: System.Xml.XPath.XDocument.dll => 0x8365dc09353ac5da => 156
	i64 9554839972845591462, ; 318: System.ServiceModel.Web => 0x84999c54e32a1ba6 => 130
	i64 9575902398040817096, ; 319: Xamarin.Google.Crypto.Tink.Android.dll => 0x84e4707ee708bdc8 => 276
	i64 9584643793929893533, ; 320: System.IO.dll => 0x85037ebfbbd7f69d => 56
	i64 9659729154652888475, ; 321: System.Text.RegularExpressions => 0x860e407c9991dd9b => 135
	i64 9662334977499516867, ; 322: System.Numerics.dll => 0x8617827802b0cfc3 => 82
	i64 9667360217193089419, ; 323: System.Diagnostics.StackTrace => 0x86295ce5cd89898b => 29
	i64 9678050649315576968, ; 324: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 223
	i64 9702891218465930390, ; 325: System.Collections.NonGeneric.dll => 0x86a79827b2eb3c96 => 10
	i64 9780093022148426479, ; 326: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x87b9dec9576efaef => 273
	i64 9808709177481450983, ; 327: Mono.Android.dll => 0x881f890734e555e7 => 168
	i64 9825649861376906464, ; 328: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 220
	i64 9834056768316610435, ; 329: System.Transactions.dll => 0x8879968718899783 => 147
	i64 9836529246295212050, ; 330: System.Reflection.Metadata => 0x88825f3bbc2ac012 => 93
	i64 9864956466380592553, ; 331: Microsoft.EntityFrameworkCore.Sqlite => 0x88e75da3af4ed5a9 => 176
	i64 9907349773706910547, ; 332: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 233
	i64 9933555792566666578, ; 333: System.Linq.Queryable.dll => 0x89db145cf475c552 => 59
	i64 9956195530459977388, ; 334: Microsoft.Maui => 0x8a2b8315b36616ac => 192
	i64 9974604633896246661, ; 335: System.Xml.Serialization.dll => 0x8a6cea111a59dd85 => 154
	i64 9991543690424095600, ; 336: es/Microsoft.Maui.Controls.resources.dll => 0x8aa9180c89861370 => 292
	i64 10017511394021241210, ; 337: Microsoft.Extensions.Logging.Debug => 0x8b055989ae10717a => 186
	i64 10038780035334861115, ; 338: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10051358222726253779, ; 339: System.Private.Xml => 0x8b7d990c97ccccd3 => 87
	i64 10078727084704864206, ; 340: System.Net.WebSockets.Client => 0x8bded4e257f117ce => 78
	i64 10089571585547156312, ; 341: System.IO.FileSystem.AccessControl => 0x8c055be67469bb58 => 46
	i64 10092835686693276772, ; 342: Microsoft.Maui.Controls => 0x8c10f49539bd0c64 => 190
	i64 10105485790837105934, ; 343: System.Threading.Tasks.Parallel => 0x8c3de5c91d9a650e => 140
	i64 10143853363526200146, ; 344: da\Microsoft.Maui.Controls.resources => 0x8cc634e3c2a16b52 => 289
	i64 10226222362177979215, ; 345: Xamarin.Kotlin.StdLib.Jdk7 => 0x8dead70ebbc6434f => 282
	i64 10229024438826829339, ; 346: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 227
	i64 10236703004850800690, ; 347: System.Net.ServicePoint.dll => 0x8e101325834e4832 => 73
	i64 10245369515835430794, ; 348: System.Reflection.Emit.Lightweight => 0x8e2edd4ad7fc978a => 90
	i64 10252714262739571204, ; 349: Microsoft.Maui.Controls.HotReload.Forms => 0x8e48f54cfe2c5204 => 320
	i64 10321854143672141184, ; 350: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 279
	i64 10360651442923773544, ; 351: System.Text.Encoding => 0x8fc86d98211c1e68 => 134
	i64 10364469296367737616, ; 352: System.Reflection.Emit.ILGeneration.dll => 0x8fd5fde967711b10 => 89
	i64 10376576884623852283, ; 353: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 265
	i64 10406448008575299332, ; 354: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 285
	i64 10430153318873392755, ; 355: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 224
	i64 10506226065143327199, ; 356: ca\Microsoft.Maui.Controls.resources => 0x91cd9cf11ed169df => 287
	i64 10546663366131771576, ; 357: System.Runtime.Serialization.Json.dll => 0x925d4673efe8e8b8 => 111
	i64 10566960649245365243, ; 358: System.Globalization.dll => 0x92a562b96dcd13fb => 41
	i64 10595762989148858956, ; 359: System.Xml.XPath.XDocument => 0x930bb64cc472ea4c => 156
	i64 10670374202010151210, ; 360: Microsoft.Win32.Primitives.dll => 0x9414c8cd7b4ea92a => 4
	i64 10714184849103829812, ; 361: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 102
	i64 10785150219063592792, ; 362: System.Net.Primitives => 0x95ac8cfb68830758 => 69
	i64 10811915265162633087, ; 363: Microsoft.EntityFrameworkCore.Relational.dll => 0x960ba3a651a45f7f => 175
	i64 10822644899632537592, ; 364: System.Linq.Queryable => 0x9631c23204ca5ff8 => 59
	i64 10830817578243619689, ; 365: System.Formats.Tar => 0x964ecb340a447b69 => 38
	i64 10847732767863316357, ; 366: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 214
	i64 10899834349646441345, ; 367: System.Web => 0x9743fd975946eb81 => 150
	i64 10943875058216066601, ; 368: System.IO.UnmanagedMemoryStream.dll => 0x97e07461df39de29 => 55
	i64 10964653383833615866, ; 369: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 33
	i64 11002576679268595294, ; 370: Microsoft.Extensions.Logging.Abstractions => 0x98b1013215cd365e => 185
	i64 11009005086950030778, ; 371: Microsoft.Maui.dll => 0x98c7d7cc621ffdba => 192
	i64 11019817191295005410, ; 372: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 211
	i64 11023048688141570732, ; 373: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 374: System.Xml => 0x992e31d0412bf7fc => 160
	i64 11071824625609515081, ; 375: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 277
	i64 11103970607964515343, ; 376: hu\Microsoft.Maui.Controls.resources => 0x9a193a6fc41a6c0f => 298
	i64 11136029745144976707, ; 377: Jsr305Binding.dll => 0x9a8b200d4f8cd543 => 275
	i64 11162124722117608902, ; 378: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 270
	i64 11188319605227840848, ; 379: System.Threading.Overlapped => 0x9b44e5671724e550 => 137
	i64 11220793807500858938, ; 380: ja\Microsoft.Maui.Controls.resources => 0x9bb8448481fdd63a => 301
	i64 11226290749488709958, ; 381: Microsoft.Extensions.Options.dll => 0x9bcbcbf50c874146 => 187
	i64 11235648312900863002, ; 382: System.Reflection.DispatchProxy.dll => 0x9bed0a9c8fac441a => 88
	i64 11329751333533450475, ; 383: System.Threading.Timer.dll => 0x9d3b5ccf6cc500eb => 144
	i64 11340910727871153756, ; 384: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 226
	i64 11347436699239206956, ; 385: System.Xml.XmlSerializer.dll => 0x9d7a318e8162502c => 159
	i64 11392833485892708388, ; 386: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 255
	i64 11398376662953476300, ; 387: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x9e2f2b2f0b71c0cc => 176
	i64 11432101114902388181, ; 388: System.AppContext => 0x9ea6fb64e61a9dd5 => 6
	i64 11446671985764974897, ; 389: Mono.Android.Export => 0x9edabf8623efc131 => 166
	i64 11448276831755070604, ; 390: System.Diagnostics.TextWriterTraceListener => 0x9ee0731f77186c8c => 30
	i64 11485890710487134646, ; 391: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 106
	i64 11508496261504176197, ; 392: Xamarin.AndroidX.Fragment.Ktx.dll => 0x9fb664600dde1045 => 236
	i64 11513602507638267977, ; 393: System.IO.Pipelines.dll => 0x9fc8887aa0d36049 => 200
	i64 11518296021396496455, ; 394: id\Microsoft.Maui.Controls.resources => 0x9fd9353475222047 => 299
	i64 11529969570048099689, ; 395: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 270
	i64 11530571088791430846, ; 396: Microsoft.Extensions.Logging => 0xa004d1504ccd66be => 184
	i64 11580057168383206117, ; 397: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 209
	i64 11591352189662810718, ; 398: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 263
	i64 11597940890313164233, ; 399: netstandard => 0xa0f429ca8d1805c9 => 164
	i64 11672361001936329215, ; 400: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 237
	i64 11692977985522001935, ; 401: System.Threading.Overlapped.dll => 0xa245cd869980680f => 137
	i64 11705530742807338875, ; 402: he/Microsoft.Maui.Controls.resources.dll => 0xa272663128721f7b => 295
	i64 11707554492040141440, ; 403: System.Linq.Parallel.dll => 0xa27996c7fe94da80 => 58
	i64 11743665907891708234, ; 404: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 141
	i64 11991047634523762324, ; 405: System.Net => 0xa668c24ad493ae94 => 80
	i64 12040886584167504988, ; 406: System.Net.ServicePoint => 0xa719d28d8e121c5c => 73
	i64 12063623837170009990, ; 407: System.Security => 0xa76a99f6ce740786 => 129
	i64 12096697103934194533, ; 408: System.Diagnostics.Contracts => 0xa7e019eccb7e8365 => 25
	i64 12102847907131387746, ; 409: System.Buffers => 0xa7f5f40c43256f62 => 7
	i64 12123043025855404482, ; 410: System.Reflection.Extensions.dll => 0xa83db366c0e359c2 => 92
	i64 12137774235383566651, ; 411: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 267
	i64 12145679461940342714, ; 412: System.Text.Json => 0xa88e1f1ebcb62fba => 202
	i64 12191646537372739477, ; 413: Xamarin.Android.Glide.dll => 0xa9316dee7f392795 => 203
	i64 12201331334810686224, ; 414: System.Runtime.Serialization.Primitives.dll => 0xa953d6341e3bd310 => 112
	i64 12269460666702402136, ; 415: System.Collections.Immutable.dll => 0xaa45e178506c9258 => 9
	i64 12279246230491828964, ; 416: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 198
	i64 12313367145828839434, ; 417: System.IO.Pipelines => 0xaae1de2e1c17f00a => 200
	i64 12332222936682028543, ; 418: System.Runtime.Handles => 0xab24db6c07db5dff => 103
	i64 12375446203996702057, ; 419: System.Configuration.dll => 0xabbe6ac12e2e0569 => 19
	i64 12451044538927396471, ; 420: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 235
	i64 12466513435562512481, ; 421: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 249
	i64 12475113361194491050, ; 422: _Microsoft.Android.Resource.Designer.dll => 0xad2081818aba1caa => 323
	i64 12487638416075308985, ; 423: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 229
	i64 12517810545449516888, ; 424: System.Diagnostics.TraceSource.dll => 0xadb8325e6f283f58 => 32
	i64 12538491095302438457, ; 425: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 217
	i64 12550732019250633519, ; 426: System.IO.Compression => 0xae2d28465e8e1b2f => 45
	i64 12681088699309157496, ; 427: it/Microsoft.Maui.Controls.resources.dll => 0xaffc46fc178aec78 => 300
	i64 12699999919562409296, ; 428: System.Diagnostics.StackTrace.dll => 0xb03f76a3ad01c550 => 29
	i64 12700543734426720211, ; 429: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 218
	i64 12708238894395270091, ; 430: System.IO => 0xb05cbbf17d3ba3cb => 56
	i64 12708922737231849740, ; 431: System.Text.Encoding.Extensions => 0xb05f29e50e96e90c => 133
	i64 12717050818822477433, ; 432: System.Runtime.Serialization.Xml.dll => 0xb07c0a5786811679 => 113
	i64 12753841065332862057, ; 433: Xamarin.AndroidX.Window => 0xb0febee04cf46c69 => 272
	i64 12823819093633476069, ; 434: th/Microsoft.Maui.Controls.resources.dll => 0xb1f75b85abe525e5 => 313
	i64 12828192437253469131, ; 435: Xamarin.Kotlin.StdLib.Jdk8.dll => 0xb206e50e14d873cb => 283
	i64 12835242264250840079, ; 436: System.IO.Pipes => 0xb21ff0d5d6c0740f => 54
	i64 12843321153144804894, ; 437: Microsoft.Extensions.Primitives => 0xb23ca48abd74d61e => 188
	i64 12843770487262409629, ; 438: System.AppContext.dll => 0xb23e3d357debf39d => 6
	i64 12859557719246324186, ; 439: System.Net.WebHeaderCollection.dll => 0xb276539ce04f41da => 76
	i64 12982280885948128408, ; 440: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 228
	i64 13016157076886195628, ; 441: MauiAppCrud.dll => 0xb4a2ade61c7d0dac => 0
	i64 13068258254871114833, ; 442: System.Runtime.Serialization.Formatters.dll => 0xb55bc7a4eaa8b451 => 110
	i64 13129914918964716986, ; 443: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 232
	i64 13173818576982874404, ; 444: System.Runtime.CompilerServices.VisualC.dll => 0xb6d2ce32a8819924 => 101
	i64 13221551921002590604, ; 445: ca/Microsoft.Maui.Controls.resources.dll => 0xb77c636bdebe318c => 287
	i64 13222659110913276082, ; 446: ja/Microsoft.Maui.Controls.resources.dll => 0xb78052679c1178b2 => 301
	i64 13343850469010654401, ; 447: Mono.Android.Runtime.dll => 0xb92ee14d854f44c1 => 167
	i64 13370592475155966277, ; 448: System.Runtime.Serialization => 0xb98de304062ea945 => 114
	i64 13381594904270902445, ; 449: he\Microsoft.Maui.Controls.resources => 0xb9b4f9aaad3e94ad => 295
	i64 13401370062847626945, ; 450: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 267
	i64 13404347523447273790, ; 451: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 222
	i64 13431476299110033919, ; 452: System.Net.WebClient => 0xba663087f18829ff => 75
	i64 13454009404024712428, ; 453: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 278
	i64 13463706743370286408, ; 454: System.Private.DataContractSerialization.dll => 0xbad8b1f3069e0548 => 84
	i64 13465488254036897740, ; 455: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 280
	i64 13467053111158216594, ; 456: uk/Microsoft.Maui.Controls.resources.dll => 0xbae49573fde79792 => 315
	i64 13491513212026656886, ; 457: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 215
	i64 13540124433173649601, ; 458: vi\Microsoft.Maui.Controls.resources => 0xbbe82f6eede718c1 => 316
	i64 13545416393490209236, ; 459: id/Microsoft.Maui.Controls.resources.dll => 0xbbfafc7174bc99d4 => 299
	i64 13572454107664307259, ; 460: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 257
	i64 13578472628727169633, ; 461: System.Xml.XPath => 0xbc706ce9fba5c261 => 157
	i64 13580399111273692417, ; 462: Microsoft.VisualBasic.Core.dll => 0xbc77450a277fbd01 => 2
	i64 13621154251410165619, ; 463: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 228
	i64 13647894001087880694, ; 464: System.Data.dll => 0xbd670f48cb071df6 => 24
	i64 13675589307506966157, ; 465: Xamarin.AndroidX.Activity.Ktx => 0xbdc97404d0153e8d => 208
	i64 13702626353344114072, ; 466: System.Diagnostics.Tools.dll => 0xbe29821198fb6d98 => 31
	i64 13710614125866346983, ; 467: System.Security.AccessControl.dll => 0xbe45e2e7d0b769e7 => 116
	i64 13713329104121190199, ; 468: System.Dynamic.Runtime => 0xbe4f8829f32b5737 => 36
	i64 13717397318615465333, ; 469: System.ComponentModel.Primitives.dll => 0xbe5dfc2ef2f87d75 => 16
	i64 13755568601956062840, ; 470: fr/Microsoft.Maui.Controls.resources.dll => 0xbee598c36b1b9678 => 294
	i64 13768883594457632599, ; 471: System.IO.IsolatedStorage => 0xbf14e6adb159cf57 => 51
	i64 13814445057219246765, ; 472: hr/Microsoft.Maui.Controls.resources.dll => 0xbfb6c49664b43aad => 297
	i64 13828521679616088467, ; 473: Xamarin.Kotlin.StdLib.Common => 0xbfe8c733724e1993 => 281
	i64 13881769479078963060, ; 474: System.Console.dll => 0xc0a5f3cade5c6774 => 20
	i64 13911222732217019342, ; 475: System.Security.Cryptography.OpenSsl.dll => 0xc10e975ec1226bce => 122
	i64 13928444506500929300, ; 476: System.Windows.dll => 0xc14bc67b8bba9714 => 151
	i64 13955418299340266673, ; 477: Microsoft.Extensions.DependencyModel.dll => 0xc1ab9b0118299cb1 => 183
	i64 13959074834287824816, ; 478: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 235
	i64 14075334701871371868, ; 479: System.ServiceModel.Web.dll => 0xc355a25647c5965c => 130
	i64 14100563506285742564, ; 480: da/Microsoft.Maui.Controls.resources.dll => 0xc3af43cd0cff89e4 => 289
	i64 14124974489674258913, ; 481: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 217
	i64 14125464355221830302, ; 482: System.Threading.dll => 0xc407bafdbc707a9e => 145
	i64 14133832980772275001, ; 483: Microsoft.EntityFrameworkCore.dll => 0xc425763635a1c339 => 173
	i64 14178052285788134900, ; 484: Xamarin.Android.Glide.Annotations.dll => 0xc4c28f6f75511df4 => 204
	i64 14212104595480609394, ; 485: System.Security.Cryptography.Cng.dll => 0xc53b89d4a4518272 => 119
	i64 14220608275227875801, ; 486: System.Diagnostics.FileVersionInfo.dll => 0xc559bfe1def019d9 => 27
	i64 14226382999226559092, ; 487: System.ServiceProcess => 0xc56e43f6938e2a74 => 131
	i64 14232023429000439693, ; 488: System.Resources.Writer.dll => 0xc5824de7789ba78d => 99
	i64 14254574811015963973, ; 489: System.Text.Encoding.Extensions.dll => 0xc5d26c4442d66545 => 133
	i64 14261073672896646636, ; 490: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 255
	i64 14298246716367104064, ; 491: System.Web.dll => 0xc66d93a217f4e840 => 150
	i64 14327695147300244862, ; 492: System.Reflection.dll => 0xc6d632d338eb4d7e => 96
	i64 14327709162229390963, ; 493: System.Security.Cryptography.X509Certificates => 0xc6d63f9253cade73 => 124
	i64 14331727281556788554, ; 494: Xamarin.Android.Glide.DiskLruCache.dll => 0xc6e48607a2f7954a => 205
	i64 14346402571976470310, ; 495: System.Net.Ping.dll => 0xc718a920f3686f26 => 68
	i64 14461014870687870182, ; 496: System.Net.Requests.dll => 0xc8afd8683afdece6 => 71
	i64 14464374589798375073, ; 497: ru\Microsoft.Maui.Controls.resources => 0xc8bbc80dcb1e5ea1 => 310
	i64 14486659737292545672, ; 498: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 240
	i64 14495724990987328804, ; 499: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 258
	i64 14522721392235705434, ; 500: el/Microsoft.Maui.Controls.resources.dll => 0xc98b12295c2cf45a => 291
	i64 14551742072151931844, ; 501: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 201
	i64 14561513370130550166, ; 502: System.Security.Cryptography.Primitives.dll => 0xca14e3428abb8d96 => 123
	i64 14574160591280636898, ; 503: System.Net.Quic => 0xca41d1d72ec783e2 => 70
	i64 14622043554576106986, ; 504: System.Runtime.Serialization.Formatters => 0xcaebef2458cc85ea => 110
	i64 14644440854989303794, ; 505: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 250
	i64 14669215534098758659, ; 506: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 181
	i64 14690985099581930927, ; 507: System.Web.HttpUtility => 0xcbe0dd1ca5233daf => 149
	i64 14705122255218365489, ; 508: ko\Microsoft.Maui.Controls.resources => 0xcc1316c7b0fb5431 => 302
	i64 14744092281598614090, ; 509: zh-Hans\Microsoft.Maui.Controls.resources => 0xcc9d89d004439a4a => 318
	i64 14792063746108907174, ; 510: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 278
	i64 14832630590065248058, ; 511: System.Security.Claims => 0xcdd816ef5d6e873a => 117
	i64 14852515768018889994, ; 512: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 226
	i64 14889905118082851278, ; 513: GoogleGson.dll => 0xcea391d0969961ce => 171
	i64 14892012299694389861, ; 514: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xceab0e490a083a65 => 319
	i64 14904040806490515477, ; 515: ar\Microsoft.Maui.Controls.resources => 0xced5ca2604cb2815 => 286
	i64 14912225920358050525, ; 516: System.Security.Principal.Windows => 0xcef2de7759506add => 126
	i64 14935719434541007538, ; 517: System.Text.Encoding.CodePages.dll => 0xcf4655b160b702b2 => 132
	i64 14954917835170835695, ; 518: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 182
	i64 14984936317414011727, ; 519: System.Net.WebHeaderCollection => 0xcff5302fe54ff34f => 76
	i64 14987728460634540364, ; 520: System.IO.Compression.dll => 0xcfff1ba06622494c => 45
	i64 14988210264188246988, ; 521: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 229
	i64 15015154896917945444, ; 522: System.Net.Security.dll => 0xd0608bd33642dc64 => 72
	i64 15024878362326791334, ; 523: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 62
	i64 15071021337266399595, ; 524: System.Resources.Reader.dll => 0xd127060e7a18a96b => 97
	i64 15076659072870671916, ; 525: System.ObjectModel.dll => 0xd13b0d8c1620662c => 83
	i64 15111608613780139878, ; 526: ms\Microsoft.Maui.Controls.resources => 0xd1b737f831192f66 => 303
	i64 15115185479366240210, ; 527: System.IO.Compression.Brotli.dll => 0xd1c3ed1c1bc467d2 => 42
	i64 15133485256822086103, ; 528: System.Linq.dll => 0xd204f0a9127dd9d7 => 60
	i64 15150743910298169673, ; 529: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 256
	i64 15227001540531775957, ; 530: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd3512d3999b8e9d5 => 180
	i64 15234786388537674379, ; 531: System.Dynamic.Runtime.dll => 0xd36cd580c5be8a8b => 36
	i64 15250465174479574862, ; 532: System.Globalization.Calendars.dll => 0xd3a489469852174e => 39
	i64 15272359115529052076, ; 533: Xamarin.AndroidX.Collection.Ktx => 0xd3f251b2fb4edfac => 219
	i64 15279429628684179188, ; 534: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 284
	i64 15299439993936780255, ; 535: System.Xml.XPath.dll => 0xd452879d55019bdf => 157
	i64 15338463749992804988, ; 536: System.Resources.Reader => 0xd4dd2b839286f27c => 97
	i64 15370334346939861994, ; 537: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 224
	i64 15391712275433856905, ; 538: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 182
	i64 15526743539506359484, ; 539: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 134
	i64 15527772828719725935, ; 540: System.Console => 0xd77dbb1e38cd3d6f => 20
	i64 15530465045505749832, ; 541: System.Net.HttpListener.dll => 0xd7874bacc9fdb348 => 64
	i64 15536481058354060254, ; 542: de\Microsoft.Maui.Controls.resources => 0xd79cab34eec75bde => 290
	i64 15541854775306130054, ; 543: System.Security.Cryptography.X509Certificates.dll => 0xd7afc292e8d49286 => 124
	i64 15557562860424774966, ; 544: System.Net.Sockets => 0xd7e790fe7a6dc536 => 74
	i64 15582737692548360875, ; 545: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 248
	i64 15609085926864131306, ; 546: System.dll => 0xd89e9cf3334914ea => 161
	i64 15620595871140898079, ; 547: Microsoft.Extensions.DependencyModel => 0xd8c7812eef49651f => 183
	i64 15661133872274321916, ; 548: System.Xml.ReaderWriter.dll => 0xd9578647d4bfb1fc => 153
	i64 15664356999916475676, ; 549: de/Microsoft.Maui.Controls.resources.dll => 0xd962f9b2b6ecd51c => 290
	i64 15710114879900314733, ; 550: Microsoft.Win32.Registry => 0xda058a3f5d096c6d => 5
	i64 15743187114543869802, ; 551: hu/Microsoft.Maui.Controls.resources.dll => 0xda7b09450ae4ef6a => 298
	i64 15755368083429170162, ; 552: System.IO.FileSystem.Primitives => 0xdaa64fcbde529bf2 => 48
	i64 15777549416145007739, ; 553: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 262
	i64 15783653065526199428, ; 554: el\Microsoft.Maui.Controls.resources => 0xdb0accd674b1c484 => 291
	i64 15817206913877585035, ; 555: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 141
	i64 15847085070278954535, ; 556: System.Threading.Channels.dll => 0xdbec27e8f35f8e27 => 136
	i64 15885744048853936810, ; 557: System.Resources.Writer => 0xdc75800bd0b6eaaa => 99
	i64 15928521404965645318, ; 558: Microsoft.Maui.Controls.Compatibility => 0xdd0d79d32c2eec06 => 189
	i64 15934062614519587357, ; 559: System.Security.Cryptography.OpenSsl => 0xdd2129868f45a21d => 122
	i64 15937190497610202713, ; 560: System.Security.Cryptography.Cng => 0xdd2c465197c97e59 => 119
	i64 15963349826457351533, ; 561: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 139
	i64 15971679995444160383, ; 562: System.Formats.Tar.dll => 0xdda6ce5592a9677f => 38
	i64 16018552496348375205, ; 563: System.Net.NetworkInformation.dll => 0xde4d54a020caa8a5 => 67
	i64 16054465462676478687, ; 564: System.Globalization.Extensions => 0xdecceb47319bdadf => 40
	i64 16154507427712707110, ; 565: System => 0xe03056ea4e39aa26 => 161
	i64 16219561732052121626, ; 566: System.Net.Security => 0xe1177575db7c781a => 72
	i64 16288847719894691167, ; 567: nb\Microsoft.Maui.Controls.resources => 0xe20d9cb300c12d5f => 304
	i64 16315482530584035869, ; 568: WindowsBase.dll => 0xe26c3ceb1e8d821d => 162
	i64 16321164108206115771, ; 569: Microsoft.Extensions.Logging.Abstractions.dll => 0xe2806c487e7b0bbb => 185
	i64 16337011941688632206, ; 570: System.Security.Principal.Windows.dll => 0xe2b8b9cdc3aa638e => 126
	i64 16361933716545543812, ; 571: Xamarin.AndroidX.ExifInterface.dll => 0xe3114406a52f1e84 => 234
	i64 16423015068819898779, ; 572: Xamarin.Kotlin.StdLib.Jdk8 => 0xe3ea453135e5c19b => 283
	i64 16454459195343277943, ; 573: System.Net.NetworkInformation => 0xe459fb756d988f77 => 67
	i64 16496768397145114574, ; 574: Mono.Android.Export.dll => 0xe4f04b741db987ce => 166
	i64 16589693266713801121, ; 575: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xe63a6e214f2a71a1 => 247
	i64 16621146507174665210, ; 576: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 221
	i64 16648892297579399389, ; 577: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 170
	i64 16649148416072044166, ; 578: Microsoft.Maui.Graphics => 0xe70da84600bb4e86 => 194
	i64 16677317093839702854, ; 579: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 254
	i64 16702652415771857902, ; 580: System.ValueTuple => 0xe7cbbde0b0e6d3ee => 148
	i64 16709499819875633724, ; 581: System.IO.Compression.ZipFile => 0xe7e4118e32240a3c => 44
	i64 16737807731308835127, ; 582: System.Runtime.Intrinsics => 0xe848a3736f733137 => 107
	i64 16755018182064898362, ; 583: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 196
	i64 16758309481308491337, ; 584: System.IO.FileSystem.DriveInfo => 0xe89179af15740e49 => 47
	i64 16762783179241323229, ; 585: System.Reflection.TypeExtensions => 0xe8a15e7d0d927add => 95
	i64 16765015072123548030, ; 586: System.Diagnostics.TextWriterTraceListener.dll => 0xe8a94c621bfe717e => 30
	i64 16822611501064131242, ; 587: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 23
	i64 16833383113903931215, ; 588: mscorlib => 0xe99c30c1484d7f4f => 163
	i64 16856067890322379635, ; 589: System.Data.Common.dll => 0xe9ecc87060889373 => 22
	i64 16890310621557459193, ; 590: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 135
	i64 16933958494752847024, ; 591: System.Net.WebProxy.dll => 0xeb018187f0f3b4b0 => 77
	i64 16942731696432749159, ; 592: sk\Microsoft.Maui.Controls.resources => 0xeb20acb622a01a67 => 311
	i64 16977952268158210142, ; 593: System.IO.Pipes.AccessControl => 0xeb9dcda2851b905e => 53
	i64 16989020923549080504, ; 594: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xebc52084add25bb8 => 247
	i64 16998075588627545693, ; 595: Xamarin.AndroidX.Navigation.Fragment => 0xebe54bb02d623e5d => 252
	i64 17008137082415910100, ; 596: System.Collections.NonGeneric => 0xec090a90408c8cd4 => 10
	i64 17024911836938395553, ; 597: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 210
	i64 17026344819618783825, ; 598: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0xec49ba676cb0a251 => 322
	i64 17031351772568316411, ; 599: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 251
	i64 17037200463775726619, ; 600: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 238
	i64 17062143951396181894, ; 601: System.ComponentModel.Primitives => 0xecc8e986518c9786 => 16
	i64 17089008752050867324, ; 602: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xed285aeb25888c7c => 318
	i64 17118171214553292978, ; 603: System.Threading.Channels => 0xed8ff6060fc420b2 => 136
	i64 17187273293601214786, ; 604: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 13
	i64 17201328579425343169, ; 605: System.ComponentModel.EventBasedAsync => 0xeeb76534d96c16c1 => 15
	i64 17202182880784296190, ; 606: System.Security.Cryptography.Encoding.dll => 0xeeba6e30627428fe => 121
	i64 17230721278011714856, ; 607: System.Private.Xml.Linq => 0xef1fd1b5c7a72d28 => 86
	i64 17234219099804750107, ; 608: System.Transactions.Local.dll => 0xef2c3ef5e11d511b => 146
	i64 17260702271250283638, ; 609: System.Data.Common => 0xef8a5543bba6bc76 => 22
	i64 17333249706306540043, ; 610: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 33
	i64 17338386382517543202, ; 611: System.Net.WebSockets.Client.dll => 0xf09e528d5c6da122 => 78
	i64 17342750010158924305, ; 612: hi\Microsoft.Maui.Controls.resources => 0xf0add33f97ecc211 => 296
	i64 17360349973592121190, ; 613: Xamarin.Google.Crypto.Tink.Android => 0xf0ec5a52686b9f66 => 276
	i64 17438153253682247751, ; 614: sk/Microsoft.Maui.Controls.resources.dll => 0xf200c3fe308d7847 => 311
	i64 17470386307322966175, ; 615: System.Threading.Timer => 0xf27347c8d0d5709f => 144
	i64 17509662556995089465, ; 616: System.Net.WebSockets.dll => 0xf2fed1534ea67439 => 79
	i64 17514990004910432069, ; 617: fr\Microsoft.Maui.Controls.resources => 0xf311be9c6f341f45 => 294
	i64 17522591619082469157, ; 618: GoogleGson => 0xf32cc03d27a5bf25 => 171
	i64 17590473451926037903, ; 619: Xamarin.Android.Glide => 0xf41dea67fcfda58f => 203
	i64 17623389608345532001, ; 620: pl\Microsoft.Maui.Controls.resources => 0xf492db79dfbef661 => 306
	i64 17627500474728259406, ; 621: System.Globalization => 0xf4a176498a351f4e => 41
	i64 17685921127322830888, ; 622: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 26
	i64 17702523067201099846, ; 623: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xf5abfef008ae1846 => 317
	i64 17704177640604968747, ; 624: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 249
	i64 17710060891934109755, ; 625: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 246
	i64 17712670374920797664, ; 626: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 106
	i64 17777860260071588075, ; 627: System.Runtime.Numerics.dll => 0xf6b7a5b72419c0eb => 109
	i64 17838668724098252521, ; 628: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 7
	i64 17891337867145587222, ; 629: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 279
	i64 17928294245072900555, ; 630: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 43
	i64 17992315986609351877, ; 631: System.Xml.XmlDocument.dll => 0xf9b18c0ffc6eacc5 => 158
	i64 18017743553296241350, ; 632: Microsoft.Extensions.Caching.Abstractions => 0xfa0be24cb44e92c6 => 177
	i64 18025913125965088385, ; 633: System.Threading => 0xfa28e87b91334681 => 145
	i64 18099568558057551825, ; 634: nl/Microsoft.Maui.Controls.resources.dll => 0xfb2e95b53ad977d1 => 305
	i64 18116111925905154859, ; 635: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 215
	i64 18121036031235206392, ; 636: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 251
	i64 18146411883821974900, ; 637: System.Formats.Asn1.dll => 0xfbd50176eb22c574 => 37
	i64 18146811631844267958, ; 638: System.ComponentModel.EventBasedAsync.dll => 0xfbd66d08820117b6 => 15
	i64 18225059387460068507, ; 639: System.Threading.ThreadPool.dll => 0xfcec6af3cff4a49b => 143
	i64 18245806341561545090, ; 640: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 8
	i64 18260797123374478311, ; 641: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 232
	i64 18305135509493619199, ; 642: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 253
	i64 18318849532986632368, ; 643: System.Security.dll => 0xfe39a097c37fa8b0 => 129
	i64 18324163916253801303, ; 644: it\Microsoft.Maui.Controls.resources => 0xfe4c81ff0a56ab57 => 300
	i64 18370042311372477656, ; 645: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 197
	i64 18380184030268848184, ; 646: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 269
	i64 18439108438687598470 ; 647: System.Reflection.Metadata.dll => 0xffe4df6e2ee1c786 => 93
], align 16

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [648 x i32] [
	i32 231, ; 0
	i32 188, ; 1
	i32 168, ; 2
	i32 193, ; 3
	i32 57, ; 4
	i32 218, ; 5
	i32 148, ; 6
	i32 259, ; 7
	i32 262, ; 8
	i32 225, ; 9
	i32 131, ; 10
	i32 322, ; 11
	i32 55, ; 12
	i32 261, ; 13
	i32 293, ; 14
	i32 94, ; 15
	i32 244, ; 16
	i32 128, ; 17
	i32 142, ; 18
	i32 219, ; 19
	i32 18, ; 20
	i32 296, ; 21
	i32 197, ; 22
	i32 230, ; 23
	i32 245, ; 24
	i32 147, ; 25
	i32 103, ; 26
	i32 94, ; 27
	i32 274, ; 28
	i32 304, ; 29
	i32 35, ; 30
	i32 196, ; 31
	i32 27, ; 32
	i32 214, ; 33
	i32 252, ; 34
	i32 49, ; 35
	i32 114, ; 36
	i32 69, ; 37
	i32 190, ; 38
	i32 64, ; 39
	i32 167, ; 40
	i32 198, ; 41
	i32 142, ; 42
	i32 302, ; 43
	i32 273, ; 44
	i32 213, ; 45
	i32 248, ; 46
	i32 238, ; 47
	i32 39, ; 48
	i32 88, ; 49
	i32 172, ; 50
	i32 80, ; 51
	i32 65, ; 52
	i32 61, ; 53
	i32 85, ; 54
	i32 212, ; 55
	i32 105, ; 56
	i32 292, ; 57
	i32 259, ; 58
	i32 101, ; 59
	i32 34, ; 60
	i32 209, ; 61
	i32 314, ; 62
	i32 261, ; 63
	i32 191, ; 64
	i32 170, ; 65
	i32 314, ; 66
	i32 118, ; 67
	i32 246, ; 68
	i32 288, ; 69
	i32 306, ; 70
	i32 139, ; 71
	i32 138, ; 72
	i32 282, ; 73
	i32 52, ; 74
	i32 34, ; 75
	i32 138, ; 76
	i32 206, ; 77
	i32 216, ; 78
	i32 174, ; 79
	i32 186, ; 80
	i32 230, ; 81
	i32 8, ; 82
	i32 14, ; 83
	i32 310, ; 84
	i32 258, ; 85
	i32 50, ; 86
	i32 241, ; 87
	i32 201, ; 88
	i32 100, ; 89
	i32 223, ; 90
	i32 268, ; 91
	i32 115, ; 92
	i32 207, ; 93
	i32 160, ; 94
	i32 313, ; 95
	i32 163, ; 96
	i32 66, ; 97
	i32 181, ; 98
	i32 288, ; 99
	i32 79, ; 100
	i32 100, ; 101
	i32 263, ; 102
	i32 116, ; 103
	i32 293, ; 104
	i32 275, ; 105
	i32 77, ; 106
	i32 274, ; 107
	i32 321, ; 108
	i32 113, ; 109
	i32 120, ; 110
	i32 47, ; 111
	i32 127, ; 112
	i32 239, ; 113
	i32 210, ; 114
	i32 81, ; 115
	i32 109, ; 116
	i32 74, ; 117
	i32 285, ; 118
	i32 193, ; 119
	i32 52, ; 120
	i32 265, ; 121
	i32 179, ; 122
	i32 68, ; 123
	i32 264, ; 124
	i32 178, ; 125
	i32 82, ; 126
	i32 169, ; 127
	i32 308, ; 128
	i32 115, ; 129
	i32 180, ; 130
	i32 153, ; 131
	i32 179, ; 132
	i32 204, ; 133
	i32 164, ; 134
	i32 257, ; 135
	i32 231, ; 136
	i32 184, ; 137
	i32 31, ; 138
	i32 191, ; 139
	i32 121, ; 140
	i32 71, ; 141
	i32 61, ; 142
	i32 158, ; 143
	i32 112, ; 144
	i32 87, ; 145
	i32 189, ; 146
	i32 319, ; 147
	i32 104, ; 148
	i32 18, ; 149
	i32 143, ; 150
	i32 117, ; 151
	i32 57, ; 152
	i32 225, ; 153
	i32 17, ; 154
	i32 51, ; 155
	i32 91, ; 156
	i32 321, ; 157
	i32 195, ; 158
	i32 316, ; 159
	i32 54, ; 160
	i32 320, ; 161
	i32 128, ; 162
	i32 149, ; 163
	i32 40, ; 164
	i32 175, ; 165
	i32 91, ; 166
	i32 174, ; 167
	i32 269, ; 168
	i32 49, ; 169
	i32 286, ; 170
	i32 159, ; 171
	i32 13, ; 172
	i32 243, ; 173
	i32 207, ; 174
	i32 264, ; 175
	i32 35, ; 176
	i32 66, ; 177
	i32 108, ; 178
	i32 208, ; 179
	i32 98, ; 180
	i32 98, ; 181
	i32 11, ; 182
	i32 172, ; 183
	i32 11, ; 184
	i32 250, ; 185
	i32 25, ; 186
	i32 127, ; 187
	i32 75, ; 188
	i32 242, ; 189
	i32 108, ; 190
	i32 268, ; 191
	i32 266, ; 192
	i32 105, ; 193
	i32 2, ; 194
	i32 26, ; 195
	i32 221, ; 196
	i32 154, ; 197
	i32 312, ; 198
	i32 21, ; 199
	i32 315, ; 200
	i32 48, ; 201
	i32 42, ; 202
	i32 125, ; 203
	i32 211, ; 204
	i32 58, ; 205
	i32 118, ; 206
	i32 271, ; 207
	i32 234, ; 208
	i32 220, ; 209
	i32 3, ; 210
	i32 240, ; 211
	i32 260, ; 212
	i32 37, ; 213
	i32 123, ; 214
	i32 309, ; 215
	i32 260, ; 216
	i32 195, ; 217
	i32 309, ; 218
	i32 202, ; 219
	i32 146, ; 220
	i32 84, ; 221
	i32 89, ; 222
	i32 244, ; 223
	i32 323, ; 224
	i32 241, ; 225
	i32 297, ; 226
	i32 216, ; 227
	i32 227, ; 228
	i32 272, ; 229
	i32 187, ; 230
	i32 277, ; 231
	i32 242, ; 232
	i32 132, ; 233
	i32 95, ; 234
	i32 3, ; 235
	i32 305, ; 236
	i32 104, ; 237
	i32 308, ; 238
	i32 32, ; 239
	i32 151, ; 240
	i32 155, ; 241
	i32 152, ; 242
	i32 81, ; 243
	i32 236, ; 244
	i32 140, ; 245
	i32 86, ; 246
	i32 19, ; 247
	i32 237, ; 248
	i32 50, ; 249
	i32 206, ; 250
	i32 312, ; 251
	i32 60, ; 252
	i32 53, ; 253
	i32 4, ; 254
	i32 96, ; 255
	i32 205, ; 256
	i32 17, ; 257
	i32 152, ; 258
	i32 83, ; 259
	i32 28, ; 260
	i32 44, ; 261
	i32 63, ; 262
	i32 65, ; 263
	i32 303, ; 264
	i32 169, ; 265
	i32 245, ; 266
	i32 1, ; 267
	i32 280, ; 268
	i32 46, ; 269
	i32 24, ; 270
	i32 213, ; 271
	i32 177, ; 272
	i32 162, ; 273
	i32 107, ; 274
	i32 12, ; 275
	i32 239, ; 276
	i32 62, ; 277
	i32 199, ; 278
	i32 23, ; 279
	i32 92, ; 280
	i32 165, ; 281
	i32 12, ; 282
	i32 284, ; 283
	i32 194, ; 284
	i32 28, ; 285
	i32 102, ; 286
	i32 14, ; 287
	i32 125, ; 288
	i32 222, ; 289
	i32 0, ; 290
	i32 254, ; 291
	i32 90, ; 292
	i32 243, ; 293
	i32 9, ; 294
	i32 85, ; 295
	i32 233, ; 296
	i32 266, ; 297
	i32 307, ; 298
	i32 70, ; 299
	i32 165, ; 300
	i32 1, ; 301
	i32 253, ; 302
	i32 5, ; 303
	i32 307, ; 304
	i32 43, ; 305
	i32 199, ; 306
	i32 281, ; 307
	i32 155, ; 308
	i32 256, ; 309
	i32 111, ; 310
	i32 317, ; 311
	i32 178, ; 312
	i32 120, ; 313
	i32 173, ; 314
	i32 271, ; 315
	i32 212, ; 316
	i32 156, ; 317
	i32 130, ; 318
	i32 276, ; 319
	i32 56, ; 320
	i32 135, ; 321
	i32 82, ; 322
	i32 29, ; 323
	i32 223, ; 324
	i32 10, ; 325
	i32 273, ; 326
	i32 168, ; 327
	i32 220, ; 328
	i32 147, ; 329
	i32 93, ; 330
	i32 176, ; 331
	i32 233, ; 332
	i32 59, ; 333
	i32 192, ; 334
	i32 154, ; 335
	i32 292, ; 336
	i32 186, ; 337
	i32 63, ; 338
	i32 87, ; 339
	i32 78, ; 340
	i32 46, ; 341
	i32 190, ; 342
	i32 140, ; 343
	i32 289, ; 344
	i32 282, ; 345
	i32 227, ; 346
	i32 73, ; 347
	i32 90, ; 348
	i32 320, ; 349
	i32 279, ; 350
	i32 134, ; 351
	i32 89, ; 352
	i32 265, ; 353
	i32 285, ; 354
	i32 224, ; 355
	i32 287, ; 356
	i32 111, ; 357
	i32 41, ; 358
	i32 156, ; 359
	i32 4, ; 360
	i32 102, ; 361
	i32 69, ; 362
	i32 175, ; 363
	i32 59, ; 364
	i32 38, ; 365
	i32 214, ; 366
	i32 150, ; 367
	i32 55, ; 368
	i32 33, ; 369
	i32 185, ; 370
	i32 192, ; 371
	i32 211, ; 372
	i32 21, ; 373
	i32 160, ; 374
	i32 277, ; 375
	i32 298, ; 376
	i32 275, ; 377
	i32 270, ; 378
	i32 137, ; 379
	i32 301, ; 380
	i32 187, ; 381
	i32 88, ; 382
	i32 144, ; 383
	i32 226, ; 384
	i32 159, ; 385
	i32 255, ; 386
	i32 176, ; 387
	i32 6, ; 388
	i32 166, ; 389
	i32 30, ; 390
	i32 106, ; 391
	i32 236, ; 392
	i32 200, ; 393
	i32 299, ; 394
	i32 270, ; 395
	i32 184, ; 396
	i32 209, ; 397
	i32 263, ; 398
	i32 164, ; 399
	i32 237, ; 400
	i32 137, ; 401
	i32 295, ; 402
	i32 58, ; 403
	i32 141, ; 404
	i32 80, ; 405
	i32 73, ; 406
	i32 129, ; 407
	i32 25, ; 408
	i32 7, ; 409
	i32 92, ; 410
	i32 267, ; 411
	i32 202, ; 412
	i32 203, ; 413
	i32 112, ; 414
	i32 9, ; 415
	i32 198, ; 416
	i32 200, ; 417
	i32 103, ; 418
	i32 19, ; 419
	i32 235, ; 420
	i32 249, ; 421
	i32 323, ; 422
	i32 229, ; 423
	i32 32, ; 424
	i32 217, ; 425
	i32 45, ; 426
	i32 300, ; 427
	i32 29, ; 428
	i32 218, ; 429
	i32 56, ; 430
	i32 133, ; 431
	i32 113, ; 432
	i32 272, ; 433
	i32 313, ; 434
	i32 283, ; 435
	i32 54, ; 436
	i32 188, ; 437
	i32 6, ; 438
	i32 76, ; 439
	i32 228, ; 440
	i32 0, ; 441
	i32 110, ; 442
	i32 232, ; 443
	i32 101, ; 444
	i32 287, ; 445
	i32 301, ; 446
	i32 167, ; 447
	i32 114, ; 448
	i32 295, ; 449
	i32 267, ; 450
	i32 222, ; 451
	i32 75, ; 452
	i32 278, ; 453
	i32 84, ; 454
	i32 280, ; 455
	i32 315, ; 456
	i32 215, ; 457
	i32 316, ; 458
	i32 299, ; 459
	i32 257, ; 460
	i32 157, ; 461
	i32 2, ; 462
	i32 228, ; 463
	i32 24, ; 464
	i32 208, ; 465
	i32 31, ; 466
	i32 116, ; 467
	i32 36, ; 468
	i32 16, ; 469
	i32 294, ; 470
	i32 51, ; 471
	i32 297, ; 472
	i32 281, ; 473
	i32 20, ; 474
	i32 122, ; 475
	i32 151, ; 476
	i32 183, ; 477
	i32 235, ; 478
	i32 130, ; 479
	i32 289, ; 480
	i32 217, ; 481
	i32 145, ; 482
	i32 173, ; 483
	i32 204, ; 484
	i32 119, ; 485
	i32 27, ; 486
	i32 131, ; 487
	i32 99, ; 488
	i32 133, ; 489
	i32 255, ; 490
	i32 150, ; 491
	i32 96, ; 492
	i32 124, ; 493
	i32 205, ; 494
	i32 68, ; 495
	i32 71, ; 496
	i32 310, ; 497
	i32 240, ; 498
	i32 258, ; 499
	i32 291, ; 500
	i32 201, ; 501
	i32 123, ; 502
	i32 70, ; 503
	i32 110, ; 504
	i32 250, ; 505
	i32 181, ; 506
	i32 149, ; 507
	i32 302, ; 508
	i32 318, ; 509
	i32 278, ; 510
	i32 117, ; 511
	i32 226, ; 512
	i32 171, ; 513
	i32 319, ; 514
	i32 286, ; 515
	i32 126, ; 516
	i32 132, ; 517
	i32 182, ; 518
	i32 76, ; 519
	i32 45, ; 520
	i32 229, ; 521
	i32 72, ; 522
	i32 62, ; 523
	i32 97, ; 524
	i32 83, ; 525
	i32 303, ; 526
	i32 42, ; 527
	i32 60, ; 528
	i32 256, ; 529
	i32 180, ; 530
	i32 36, ; 531
	i32 39, ; 532
	i32 219, ; 533
	i32 284, ; 534
	i32 157, ; 535
	i32 97, ; 536
	i32 224, ; 537
	i32 182, ; 538
	i32 134, ; 539
	i32 20, ; 540
	i32 64, ; 541
	i32 290, ; 542
	i32 124, ; 543
	i32 74, ; 544
	i32 248, ; 545
	i32 161, ; 546
	i32 183, ; 547
	i32 153, ; 548
	i32 290, ; 549
	i32 5, ; 550
	i32 298, ; 551
	i32 48, ; 552
	i32 262, ; 553
	i32 291, ; 554
	i32 141, ; 555
	i32 136, ; 556
	i32 99, ; 557
	i32 189, ; 558
	i32 122, ; 559
	i32 119, ; 560
	i32 139, ; 561
	i32 38, ; 562
	i32 67, ; 563
	i32 40, ; 564
	i32 161, ; 565
	i32 72, ; 566
	i32 304, ; 567
	i32 162, ; 568
	i32 185, ; 569
	i32 126, ; 570
	i32 234, ; 571
	i32 283, ; 572
	i32 67, ; 573
	i32 166, ; 574
	i32 247, ; 575
	i32 221, ; 576
	i32 170, ; 577
	i32 194, ; 578
	i32 254, ; 579
	i32 148, ; 580
	i32 44, ; 581
	i32 107, ; 582
	i32 196, ; 583
	i32 47, ; 584
	i32 95, ; 585
	i32 30, ; 586
	i32 23, ; 587
	i32 163, ; 588
	i32 22, ; 589
	i32 135, ; 590
	i32 77, ; 591
	i32 311, ; 592
	i32 53, ; 593
	i32 247, ; 594
	i32 252, ; 595
	i32 10, ; 596
	i32 210, ; 597
	i32 322, ; 598
	i32 251, ; 599
	i32 238, ; 600
	i32 16, ; 601
	i32 318, ; 602
	i32 136, ; 603
	i32 13, ; 604
	i32 15, ; 605
	i32 121, ; 606
	i32 86, ; 607
	i32 146, ; 608
	i32 22, ; 609
	i32 33, ; 610
	i32 78, ; 611
	i32 296, ; 612
	i32 276, ; 613
	i32 311, ; 614
	i32 144, ; 615
	i32 79, ; 616
	i32 294, ; 617
	i32 171, ; 618
	i32 203, ; 619
	i32 306, ; 620
	i32 41, ; 621
	i32 26, ; 622
	i32 317, ; 623
	i32 249, ; 624
	i32 246, ; 625
	i32 106, ; 626
	i32 109, ; 627
	i32 7, ; 628
	i32 279, ; 629
	i32 43, ; 630
	i32 158, ; 631
	i32 177, ; 632
	i32 145, ; 633
	i32 305, ; 634
	i32 215, ; 635
	i32 251, ; 636
	i32 37, ; 637
	i32 15, ; 638
	i32 143, ; 639
	i32 8, ; 640
	i32 232, ; 641
	i32 253, ; 642
	i32 129, ; 643
	i32 300, ; 644
	i32 197, ; 645
	i32 269, ; 646
	i32 93 ; 647
], align 16

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 16

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+crc32,+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
