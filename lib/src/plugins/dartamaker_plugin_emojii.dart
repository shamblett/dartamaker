/*
 * Package : dartamaker
 * Author : S. Hamblett <steve.hamblett@linux.com>
 * Date   : 11/06/2019
 * Copyright :  S.Hamblett
 */

part of dartamaker;

/// Emojii's
class DartamakerPluginEmojii implements DartamakerPlugin {
  /// Default
  DartamakerPluginEmojii(String numchars) {
    if (numchars != null) {
      final int val = int.tryParse(numchars);
      if (val != null && val > 0) {
        _numchars = val;
      }
    }
  }

  final List<String> _emojiis = <String>[
    '©',
    '®',
    '‼',
    '⁉',
    '™',
    'ℹ',
    '↔',
    '↕',
    '↖',
    '↗',
    '↘',
    '↙',
    '↩',
    '↪',
    '⌚',
    '⌛',
    '⌨',
    '⏏',
    '⏩',
    '⏪',
    '⏫',
    '⏬',
    '⏭',
    '⏮',
    '⏯',
    '⏰',
    '⏱',
    '⏲',
    '⏳',
    '⏸',
    '⏹',
    '⏺',
    'Ⓜ',
    '▪',
    '▫',
    '▶',
    '◀',
    '◻',
    '◼',
    '◽',
    '◾',
    '☀',
    '☁',
    '☂',
    '☃',
    '☄',
    '☎',
    '☑',
    '☔',
    '☕',
    '☘',
    '☝',
    '☠',
    '☢',
    '☣',
    '☦',
    '☪',
    '☮',
    '☯',
    '☸',
    '☹',
    '☺',
    '♈',
    '♉',
    '♊',
    '♋',
    '♌',
    '♍',
    '♎',
    '♏',
    '♐',
    '♑',
    '♒',
    '♓',
    '♠',
    '♣',
    '♥',
    '♦',
    '♨',
    '♻',
    '♿',
    '⚒',
    '⚓',
    '⚔',
    '⚖',
    '⚗',
    '⚙',
    '⚛',
    '⚜',
    '⚠',
    '⚡',
    '⚪',
    '⚫',
    '⚰',
    '⚱',
    '⚽',
    '⚾',
    '⛄',
    '⛅',
    '⛈',
    '⛎',
    '⛏',
    '⛑',
    '⛓',
    '⛔',
    '⛩',
    '⛪',
    '⛰',
    '⛱',
    '⛲',
    '⛳',
    '⛴',
    '⛵',
    '⛷',
    '⛸',
    '⛹',
    '⛺',
    '⛽',
    '✂',
    '✅',
    '✈',
    '✉',
    '✊',
    '✋',
    '✌',
    '✍',
    '✏',
    '✒',
    '✔',
    '✖',
    '✝',
    '✡',
    '✨',
    '✳',
    '✴',
    '❄',
    '❇',
    '❌',
    '❎',
    '❓',
    '❔',
    '❕',
    '❗',
    '❣',
    '❤',
    '➕',
    '➖',
    '➗',
    '➡',
    '➰',
    '➿',
    '⤴',
    '⤵',
    '⬅',
    '⬆',
    '⬇',
    '⬛',
    '⬜',
    '⭐',
    '⭕',
    '〰',
    '〽',
    '㊗',
    '㊙',
    '🀄',
    '🃏',
    '🅰',
    '🅱',
    '🅾',
    '🅿',
    '🆎',
    '🆑',
    '🆒',
    '🆓',
    '🆔',
    '🆕',
    '🆖',
    '🆗',
    '🆘',
    '🆙',
    '🆚',
    '🈁',
    '🈂',
    '🈚',
    '🈯',
    '🈲',
    '🈳',
    '🈴',
    '🈵',
    '🈶',
    '🈷',
    '🈸',
    '🈹',
    '🈺',
    '🉐',
    '🉑',
    '🌀',
    '🌁',
    '🌂',
    '🌃',
    '🌄',
    '🌅',
    '🌆',
    '🌇',
    '🌈',
    '🌉',
    '🌊',
    '🌋',
    '🌌',
    '🌍',
    '🌎',
    '🌏',
    '🌐',
    '🌑',
    '🌒',
    '🌓',
    '🌔',
    '🌕',
    '🌖',
    '🌗',
    '🌘',
    '🌙',
    '🌚',
    '🌛',
    '🌜',
    '🌝',
    '🌞',
    '🌟',
    '🌠',
    '🌡',
    '🌤',
    '🌥',
    '🌦',
    '🌧',
    '🌨',
    '🌩',
    '🌪',
    '🌫',
    '🌬',
    '🌭',
    '🌮',
    '🌯',
    '🌰',
    '🌱',
    '🌲',
    '🌳',
    '🌴',
    '🌵',
    '🌶',
    '🌷',
    '🌸',
    '🌹',
    '🌺',
    '🌻',
    '🌼',
    '🌽',
    '🌾',
    '🌿',
    '🍀',
    '🍁',
    '🍂',
    '🍃',
    '🍄',
    '🍅',
    '🍆',
    '🍇',
    '🍈',
    '🍉',
    '🍊',
    '🍋',
    '🍌',
    '🍍',
    '🍎',
    '🍏',
    '🍐',
    '🍑',
    '🍒',
    '🍓',
    '🍔',
    '🍕',
    '🍖',
    '🍗',
    '🍘',
    '🍙',
    '🍚',
    '🍛',
    '🍜',
    '🍝',
    '🍞',
    '🍟',
    '🍠',
    '🍡',
    '🍢',
    '🍣',
    '🍤',
    '🍥',
    '🍦',
    '🍧',
    '🍨',
    '🍩',
    '🍪',
    '🍫',
    '🍬',
    '🍭',
    '🍮',
    '🍯',
    '🍰',
    '🍱',
    '🍲',
    '🍳',
    '🍴',
    '🍵',
    '🍶',
    '🍷',
    '🍸',
    '🍹',
    '🍺',
    '🍻',
    '🍼',
    '🍽',
    '🍾',
    '🍿',
    '🎀',
    '🎁',
    '🎂',
    '🎃',
    '🎄',
    '🎅',
    '🎆',
    '🎇',
    '🎈',
    '🎉',
    '🎊',
    '🎋',
    '🎌',
    '🎍',
    '🎎',
    '🎏',
    '🎐',
    '🎑',
    '🎒',
    '🎓',
    '🎖',
    '🎗',
    '🎙',
    '🎚',
    '🎛',
    '🎞',
    '🎟',
    '🎠',
    '🎡',
    '🎢',
    '🎣',
    '🎤',
    '🎥',
    '🎦',
    '🎧',
    '🎨',
    '🎩',
    '🎪',
    '🎫',
    '🎬',
    '🎭',
    '🎮',
    '🎯',
    '🎰',
    '🎱',
    '🎲',
    '🎳',
    '🎴',
    '🎵',
    '🎶',
    '🎷',
    '🎸',
    '🎹',
    '🎺',
    '🎻',
    '🎼',
    '🎽',
    '🎾',
    '🎿',
    '🏀',
    '🏁',
    '🏂',
    '🏃',
    '🏄',
    '🏅',
    '🏆',
    '🏇',
    '🏈',
    '🏉',
    '🏊',
    '🏋',
    '🏌',
    '🏍',
    '🏎',
    '🏏',
    '🏐',
    '🏑',
    '🏒',
    '🏓',
    '🏔',
    '🏕',
    '🏖',
    '🏗',
    '🏘',
    '🏙',
    '🏚',
    '🏛',
    '🏜',
    '🏝',
    '🏞',
    '🏟',
    '🏠',
    '🏡',
    '🏢',
    '🏣',
    '🏤',
    '🏥',
    '🏦',
    '🏧',
    '🏨',
    '🏩',
    '🏪',
    '🏫',
    '🏬',
    '🏭',
    '🏮',
    '🏯',
    '🏰',
    '🏳',
    '🏴',
    '🏵',
    '🏷',
    '🏸',
    '🏹',
    '🏺',
    '🏻',
    '🏼',
    '🏽',
    '🏾',
    '🏿',
    '🐀',
    '🐁',
    '🐂',
    '🐃',
    '🐄',
    '🐅',
    '🐆',
    '🐇',
    '🐈',
    '🐉',
    '🐊',
    '🐋',
    '🐌',
    '🐍',
    '🐎',
    '🐏',
    '🐐',
    '🐑',
    '🐒',
    '🐓',
    '🐔',
    '🐕',
    '🐖',
    '🐗',
    '🐘',
    '🐙',
    '🐚',
    '🐛',
    '🐜',
    '🐝',
    '🐞',
    '🐟',
    '🐠',
    '🐡',
    '🐢',
    '🐣',
    '🐤',
    '🐥',
    '🐦',
    '🐧',
    '🐨',
    '🐩',
    '🐪',
    '🐫',
    '🐬',
    '🐭',
    '🐮',
    '🐯',
    '🐰',
    '🐱',
    '🐲',
    '🐳',
    '🐴',
    '🐵',
    '🐶',
    '🐷',
    '🐸',
    '🐹',
    '🐺',
    '🐻',
    '🐼',
    '🐽',
    '🐾',
    '🐿',
    '👀',
    '👁',
    '👂',
    '👃',
    '👄',
    '👅',
    '👆',
    '👇',
    '👈',
    '👉',
    '👊',
    '👋',
    '👌',
    '👍',
    '👎',
    '👏',
    '👐',
    '👑',
    '👒',
    '👓',
    '👔',
    '👕',
    '👖',
    '👗',
    '👘',
    '👙',
    '👚',
    '👛',
    '👜',
    '👝',
    '👞',
    '👟',
    '👠',
    '👡',
    '👢',
    '👣',
    '👤',
    '👥',
    '👦',
    '👧',
    '👨',
    '👩',
    '👪',
    '👫',
    '👬',
    '👭',
    '👮',
    '👯',
    '👰',
    '👱',
    '👲',
    '👳',
    '👴',
    '👵',
    '👶',
    '👷',
    '👸',
    '👹',
    '👺',
    '👻',
    '👼',
    '👽',
    '👾',
    '👿',
    '💀',
    '💁',
    '💂',
    '💃',
    '💄',
    '💅',
    '💆',
    '💇',
    '💈',
    '💉',
    '💊',
    '💋',
    '💌',
    '💍',
    '💎',
    '💏',
    '💐',
    '💑',
    '💒',
    '💓',
    '💔',
    '💕',
    '💖',
    '💗',
    '💘',
    '💙',
    '💚',
    '💛',
    '💜',
    '💝',
    '💞',
    '💟',
    '💠',
    '💡',
    '💢',
    '💣',
    '💤',
    '💥',
    '💦',
    '💧',
    '💨',
    '💩',
    '💪',
    '💫',
    '💬',
    '💭',
    '💮',
    '💯',
    '💰',
    '💱',
    '💲',
    '💳',
    '💴',
    '💵',
    '💶',
    '💷',
    '💸',
    '💹',
    '💺',
    '💻',
    '💼',
    '💽',
    '💾',
    '💿',
    '📀',
    '📁',
    '📂',
    '📃',
    '📄',
    '📅',
    '📆',
    '📇',
    '📈',
    '📉',
    '📊',
    '📋',
    '📌',
    '📍',
    '📎',
    '📏',
    '📐',
    '📑',
    '📒',
    '📓',
    '📔',
    '📕',
    '📖',
    '📗',
    '📘',
    '📙',
    '📚',
    '📛',
    '📜',
    '📝',
    '📞',
    '📟',
    '📠',
    '📡',
    '📢',
    '📣',
    '📤',
    '📥',
    '📦',
    '📧',
    '📨',
    '📩',
    '📪',
    '📫',
    '📬',
    '📭',
    '📮',
    '📯',
    '📰',
    '📱',
    '📲',
    '📳',
    '📴',
    '📵',
    '📶',
    '📷',
    '📸',
    '📹',
    '📺',
    '📻',
    '📼',
    '📽',
    '📿',
    '🔀',
    '🔁',
    '🔂',
    '🔃',
    '🔄',
    '🔅',
    '🔆',
    '🔇',
    '🔈',
    '🔉',
    '🔊',
    '🔋',
    '🔌',
    '🔍',
    '🔎',
    '🔏',
    '🔐',
    '🔑',
    '🔒',
    '🔓',
    '🔔',
    '🔕',
    '🔖',
    '🔗',
    '🔘',
    '🔙',
    '🔚',
    '🔛',
    '🔜',
    '🔝',
    '🔞',
    '🔟',
    '🔠',
    '🔡',
    '🔢',
    '🔣',
    '🔤',
    '🔥',
    '🔦',
    '🔧',
    '🔨',
    '🔩',
    '🔪',
    '🔫',
    '🔬',
    '🔭',
    '🔮',
    '🔯',
    '🔰',
    '🔱',
    '🔲',
    '🔳',
    '🔴',
    '🔵',
    '🔶',
    '🔷',
    '🔸',
    '🔹',
    '🔺',
    '🔻',
    '🔼',
    '🔽',
    '🕉',
    '🕊',
    '🕋',
    '🕌',
    '🕍',
    '🕎',
    '🕐',
    '🕑',
    '🕒',
    '🕓',
    '🕔',
    '🕕',
    '🕖',
    '🕗',
    '🕘',
    '🕙',
    '🕚',
    '🕛',
    '🕜',
    '🕝',
    '🕞',
    '🕟',
    '🕠',
    '🕡',
    '🕢',
    '🕣',
    '🕤',
    '🕥',
    '🕦',
    '🕧',
    '🕯',
    '🕰',
    '🕳',
    '🕴',
    '🕵',
    '🕶',
    '🕷',
    '🕸',
    '🕹',
    '🖇',
    '🖊',
    '🖋',
    '🖌',
    '🖍',
    '🖐',
    '🖕',
    '🖖',
    '🖥',
    '🖨',
    '🖱',
    '🖲',
    '🖼',
    '🗂',
    '🗃',
    '🗄',
    '🗑',
    '🗒',
    '🗓',
    '🗜',
    '🗝',
    '🗞',
    '🗡',
    '🗣',
    '🗯',
    '🗳',
    '🗺',
    '🗻',
    '🗼',
    '🗽',
    '🗾',
    '🗿',
    '😀',
    '😁',
    '😂',
    '😃',
    '😄',
    '😅',
    '😆',
    '😇',
    '😈',
    '😉',
    '😊',
    '😋',
    '😌',
    '😍',
    '😎',
    '😏',
    '😐',
    '😑',
    '😒',
    '😓',
    '😔',
    '😕',
    '😖',
    '😗',
    '😘',
    '😙',
    '😚',
    '😛',
    '😜',
    '😝',
    '😞',
    '😟',
    '😠',
    '😡',
    '😢',
    '😣',
    '😤',
    '😥',
    '😦',
    '😧',
    '😨',
    '😩',
    '😪',
    '😫',
    '😬',
    '😭',
    '😮',
    '😯',
    '😰',
    '😱',
    '😲',
    '😳',
    '😴',
    '😵',
    '😶',
    '😷',
    '😸',
    '😹',
    '😺',
    '😻',
    '😼',
    '😽',
    '😾',
    '😿',
    '🙀',
    '🙁',
    '🙂',
    '🙃',
    '🙄',
    '🙅',
    '🙆',
    '🙇',
    '🙈',
    '🙉',
    '🙊',
    '🙋',
    '🙌',
    '🙍',
    '🙎',
    '🙏',
    '🚀',
    '🚁',
    '🚂',
    '🚃',
    '🚄',
    '🚅',
    '🚆',
    '🚇',
    '🚈',
    '🚉',
    '🚊',
    '🚋',
    '🚌',
    '🚍',
    '🚎',
    '🚏',
    '🚐',
    '🚑',
    '🚒',
    '🚓',
    '🚔',
    '🚕',
    '🚖',
    '🚗',
    '🚘',
    '🚙',
    '🚚',
    '🚛',
    '🚜',
    '🚝',
    '🚞',
    '🚟',
    '🚠',
    '🚡',
    '🚢',
    '🚣',
    '🚤',
    '🚥',
    '🚦',
    '🚧',
    '🚨',
    '🚩',
    '🚪',
    '🚫',
    '🚬',
    '🚭',
    '🚮',
    '🚯',
    '🚰',
    '🚱',
    '🚲',
    '🚳',
    '🚴',
    '🚵',
    '🚶',
    '🚷',
    '🚸',
    '🚹',
    '🚺',
    '🚻',
    '🚼',
    '🚽',
    '🚾',
    '🚿',
    '🛀',
    '🛁',
    '🛂',
    '🛃',
    '🛄',
    '🛅',
    '🛋',
    '🛌',
    '🛍',
    '🛎',
    '🛏',
    '🛐',
    '🛠',
    '🛡',
    '🛢',
    '🛣',
    '🛤',
    '🛥',
    '🛩',
    '🛫',
    '🛬',
    '🛰',
    '🛳',
    '🤐',
    '🤑',
    '🤒',
    '🤓',
    '🤔',
    '🤕',
    '🤖',
    '🤗',
    '🤘',
    '🦀',
    '🦁',
    '🦂',
    '🦃',
    '🦄',
    '🧀',
    '#⃣',
    '*⃣',
    '0⃣',
    '1⃣',
    '2⃣',
    '3⃣',
    '4⃣',
    '5⃣',
    '6⃣',
    '7⃣',
    '8⃣',
    '9⃣',
    '🇦🇨',
    '🇦🇩',
    '🇦🇪',
    '🇦🇫',
    '🇦🇬',
    '🇦🇮',
    '🇦🇱',
    '🇦🇲',
    '🇦🇴',
    '🇦🇶',
    '🇦🇷',
    '🇦🇸',
    '🇦🇹',
    '🇦🇺',
    '🇦🇼',
    '🇦🇽',
    '🇦🇿',
    '🇧🇦',
    '🇧🇧',
    '🇧🇩',
    '🇧🇪',
    '🇧🇫',
    '🇧🇬',
    '🇧🇭',
    '🇧🇮',
    '🇧🇯',
    '🇧🇱',
    '🇧🇲',
    '🇧🇳',
    '🇧🇴',
    '🇧🇶',
    '🇧🇷',
    '🇧🇸',
    '🇧🇹',
    '🇧🇻',
    '🇧🇼',
    '🇧🇾',
    '🇧🇿',
    '🇨🇦',
    '🇨🇨',
    '🇨🇩',
    '🇨🇫',
    '🇨🇬',
    '🇨🇭',
    '🇨🇮',
    '🇨🇰',
    '🇨🇱',
    '🇨🇲',
    '🇨🇳',
    '🇨🇴',
    '🇨🇵',
    '🇨🇷',
    '🇨🇺',
    '🇨🇻',
    '🇨🇼',
    '🇨🇽',
    '🇨🇾',
    '🇨🇿',
    '🇩🇪',
    '🇩🇬',
    '🇩🇯',
    '🇩🇰',
    '🇩🇲',
    '🇩🇴',
    '🇩🇿',
    '🇪🇦',
    '🇪🇨',
    '🇪🇪',
    '🇪🇬',
    '🇪🇭',
    '🇪🇷',
    '🇪🇸',
    '🇪🇹',
    '🇪🇺',
    '🇫🇮',
    '🇫🇯',
    '🇫🇰',
    '🇫🇲',
    '🇫🇴',
    '🇫🇷',
    '🇬🇦',
    '🇬🇧',
    '🇬🇩',
    '🇬🇪',
    '🇬🇫',
    '🇬🇬',
    '🇬🇭',
    '🇬🇮',
    '🇬🇱',
    '🇬🇲',
    '🇬🇳',
    '🇬🇵',
    '🇬🇶',
    '🇬🇷',
    '🇬🇸',
    '🇬🇹',
    '🇬🇺',
    '🇬🇼',
    '🇬🇾',
    '🇭🇰',
    '🇭🇲',
    '🇭🇳',
    '🇭🇷',
    '🇭🇹',
    '🇭🇺',
    '🇮🇨',
    '🇮🇩',
    '🇮🇪',
    '🇮🇱',
    '🇮🇲',
    '🇮🇳',
    '🇮🇴',
    '🇮🇶',
    '🇮🇷',
    '🇮🇸',
    '🇮🇹',
    '🇯🇪',
    '🇯🇲',
    '🇯🇴',
    '🇯🇵',
    '🇰🇪',
    '🇰🇬',
    '🇰🇭',
    '🇰🇮',
    '🇰🇲',
    '🇰🇳',
    '🇰🇵',
    '🇰🇷',
    '🇰🇼',
    '🇰🇾',
    '🇰🇿',
    '🇱🇦',
    '🇱🇧',
    '🇱🇨',
    '🇱🇮',
    '🇱🇰',
    '🇱🇷',
    '🇱🇸',
    '🇱🇹',
    '🇱🇺',
    '🇱🇻',
    '🇱🇾',
    '🇲🇦',
    '🇲🇨',
    '🇲🇩',
    '🇲🇪',
    '🇲🇫',
    '🇲🇬',
    '🇲🇭',
    '🇲🇰',
    '🇲🇱',
    '🇲🇲',
    '🇲🇳',
    '🇲🇴',
    '🇲🇵',
    '🇲🇶',
    '🇲🇷',
    '🇲🇸',
    '🇲🇹',
    '🇲🇺',
    '🇲🇻',
    '🇲🇼',
    '🇲🇽',
    '🇲🇾',
    '🇲🇿',
    '🇳🇦',
    '🇳🇨',
    '🇳🇪',
    '🇳🇫',
    '🇳🇬',
    '🇳🇮',
    '🇳🇱',
    '🇳🇴',
    '🇳🇵',
    '🇳🇷',
    '🇳🇺',
    '🇳🇿',
    '🇴🇲',
    '🇵🇦',
    '🇵🇪',
    '🇵🇫',
    '🇵🇬',
    '🇵🇭',
    '🇵🇰',
    '🇵🇱',
    '🇵🇲',
    '🇵🇳',
    '🇵🇷',
    '🇵🇸',
    '🇵🇹',
    '🇵🇼',
    '🇵🇾',
    '🇶🇦',
    '🇷🇪',
    '🇷🇴',
    '🇷🇸',
    '🇷🇺',
    '🇷🇼',
    '🇸🇦',
    '🇸🇧',
    '🇸🇨',
    '🇸🇩',
    '🇸🇪',
    '🇸🇬',
    '🇸🇭',
    '🇸🇮',
    '🇸🇯',
    '🇸🇰',
    '🇸🇱',
    '🇸🇲',
    '🇸🇳',
    '🇸🇴',
    '🇸🇷',
    '🇸🇸',
    '🇸🇹',
    '🇸🇻',
    '🇸🇽',
    '🇸🇾',
    '🇸🇿',
    '🇹🇦',
    '🇹🇨',
    '🇹🇩',
    '🇹🇫',
    '🇹🇬',
    '🇹🇭',
    '🇹🇯',
    '🇹🇰',
    '🇹🇱',
    '🇹🇲',
    '🇹🇳',
    '🇹🇴',
    '🇹🇷',
    '🇹🇹',
    '🇹🇻',
    '🇹🇼',
    '🇹🇿',
    '🇺🇦',
    '🇺🇬',
    '🇺🇲',
    '🇺🇸',
    '🇺🇾',
    '🇺🇿',
    '🇻🇦',
    '🇻🇨',
    '🇻🇪',
    '🇻🇬',
    '🇻🇮',
    '🇻🇳',
    '🇻🇺',
    '🇼🇫',
    '🇼🇸',
    '🇽🇰',
    '🇾🇪',
    '🇾🇹',
    '🇿🇦',
    '🇿🇲',
    '🇿🇼'
  ];

  int _numchars = 1;

  /// Emojii's list
  List<String> get emojiis => _emojiis;

  @override
  String apply() {
    final StringBuffer str = StringBuffer();
    for (int i = 0; i < _numchars; i++) {
      str.write(_emojiis[Random().nextInt(_emojiis.length - 1)]);
    }
    return str.toString();
  }
}
