module.exports =
  dist:
    files: [
      expand: true,
      dot: true,
      cwd: 'app',
      dest: 'dist',
      src: [
        '*.{ico,png,txt}',
        '.htaccess',
        'assets/images/{,*/}*.{webp,png,jpg,ico,gif}',
        '{,*/}*.html'
      ]
    ]
