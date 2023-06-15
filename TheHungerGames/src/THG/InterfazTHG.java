package THG;

import java.awt.Graphics;
import java.awt.Image;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.table.DefaultTableModel;

public class InterfazTHG extends javax.swing.JFrame {
    
    Background fondo = new Background();
    
    MiBD mibd;
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    
    public InterfazTHG() {
        
        mibd = new MiBD();
        con = null;
        ps = null;
        rs = null;
        this.setContentPane(fondo);
        initComponents();
        MostrarPersonas(); //Para que en todo momento me muestre la tabla
    }
    
    public void MostrarPersonas (){
        
        //Casteo, fuerza conversión entre tipos de datos
        DefaultTableModel modelo = (DefaultTableModel) tbl_Persona.getModel();
    
        String sql="SELECT * FROM persona WHERE activo = true ORDER BY id ;";
        
        ResultSet result = mibd.getQuery(sql);
        
        // Evita que clone registros en cada iteración
        if (modelo.getRowCount() > 0)
            modelo.setRowCount(0);
        
        Object [] data = new Object [5];
        
        try {
            while(result.next()) {
                
                data[0]=(result.getInt("id"));
                data[1]=(result.getString("curp"));
                data[2]=(result.getString("nombre"));
                data[3]=(result.getString("sexo"));
                data[4]=(result.getInt("edad"));
                
                modelo.addRow(data);
                
            }
        }
        catch (SQLException e) {
        }
    }

    //Aquí se almacenan todos los elementos que son creados en el Diseño de la Interfaz 
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new Background();
        txt_nombre = new javax.swing.JTextField();
        cbx_sexo = new javax.swing.JComboBox<>();
        txt_edad = new javax.swing.JTextField();
        lbl_id = new javax.swing.JLabel();
        lbl_curp = new javax.swing.JLabel();
        lbl_nombre = new javax.swing.JLabel();
        lbl_sexo = new javax.swing.JLabel();
        lbl_edad = new javax.swing.JLabel();
        txt_id = new javax.swing.JTextField();
        txt_curp = new javax.swing.JTextField();
        btn_buscar = new javax.swing.JButton();
        btn_insertar = new javax.swing.JButton();
        btn_modificar = new javax.swing.JButton();
        btn_eliminar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbl_Persona = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setBackground(new java.awt.Color(0, 0, 0));

        cbx_sexo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccionar", "Femenino", "Masculino" }));

        lbl_id.setForeground(new java.awt.Color(102, 255, 102));
        lbl_id.setText("ID:");

        lbl_curp.setForeground(new java.awt.Color(102, 255, 102));
        lbl_curp.setText("CURP:");

        lbl_nombre.setForeground(new java.awt.Color(102, 255, 102));
        lbl_nombre.setText("Nombre:");

        lbl_sexo.setForeground(new java.awt.Color(102, 255, 102));
        lbl_sexo.setText("Género:");

        lbl_edad.setForeground(new java.awt.Color(102, 255, 102));
        lbl_edad.setText("Edad:");

        txt_curp.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txt_curpActionPerformed(evt);
            }
        });

        btn_buscar.setText("Buscar");
        btn_buscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_buscarActionPerformed(evt);
            }
        });

        btn_insertar.setText("Insertar");
        btn_insertar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_insertarActionPerformed(evt);
            }
        });

        btn_modificar.setText("Modificar");
        btn_modificar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_modificarActionPerformed(evt);
            }
        });

        btn_eliminar.setText("Eliminar");
        btn_eliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btn_eliminarActionPerformed(evt);
            }
        });

        tbl_Persona.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {

            },
            new String [] {
                "ID", "CURP", "Nombre", "Sexo", "Edad"
            }
        ) {
            Class[] types = new Class [] {
                java.lang.Integer.class, java.lang.String.class, java.lang.String.class, java.lang.String.class, java.lang.Integer.class
            };

            public Class getColumnClass(int columnIndex) {
                return types [columnIndex];
            }
        });
        jScrollPane1.setViewportView(tbl_Persona);

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(btn_buscar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btn_insertar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(18, 18, 18)
                        .addComponent(btn_modificar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lbl_id, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbl_nombre, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbl_curp, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbl_sexo, javax.swing.GroupLayout.Alignment.TRAILING)
                            .addComponent(lbl_edad, javax.swing.GroupLayout.Alignment.TRAILING))
                        .addGap(32, 32, 32)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(txt_curp, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(cbx_sexo, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, 120, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addGap(18, 18, 18)
                .addComponent(btn_eliminar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(75, 75, 75)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 442, Short.MAX_VALUE)
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(157, 157, 157)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(44, 44, 44)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(lbl_id, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(lbl_curp, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(txt_curp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(21, 21, 21)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(lbl_nombre, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(22, 22, 22)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(lbl_sexo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(cbx_sexo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(35, 35, 35)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(jPanel1Layout.createSequentialGroup()
                                .addGap(6, 6, 6)
                                .addComponent(lbl_edad, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                            .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(52, 52, 52)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(btn_modificar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btn_buscar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btn_eliminar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btn_insertar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addGap(29, 29, 29))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                        .addContainerGap())))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void limpiarCampos(){
        txt_id.setText(null);
        txt_curp.setText(null);
        txt_nombre.setText(null);
        cbx_sexo.setSelectedIndex(0);
        txt_edad.setText(null);
    }
    
    private void btn_insertarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_insertarActionPerformed

        try{
            con = mibd.getConnection();
            ps = con.prepareStatement("INSERT INTO persona (curp, nombre, sexo, edad,activo) VALUES(?, ?, ?, ?,true);");
            ps.setString(1, txt_curp.getText());
            ps.setString(2, txt_nombre.getText());
            ps.setString(3, cbx_sexo.getSelectedItem().toString());
            ps.setInt(4, Integer.parseInt(txt_edad.getText()));
            
            //txt_id.setEnabled(false);
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona guardada exitosamente :)");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al guardar persona.");
                limpiarCampos();
            }
            
            //Actualiza también la tabla de al lado
            MostrarPersonas();
            
            con.close();
            
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_insertarActionPerformed

    private void btn_buscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_buscarActionPerformed

        try{
            //MiBD mibd = new MiBD();
            con = mibd.getConnection();
            ps = con.prepareStatement("SELECT * FROM persona WHERE id = ? AND activo = true;");
            ps.setInt(1, Integer.parseInt(txt_id.getText()));
            
            rs = ps.executeQuery();
            if(rs.next()){
                txt_curp.setText(rs.getString("curp"));
                txt_nombre.setText(rs.getString("nombre"));
                cbx_sexo.setSelectedItem(rs.getString("sexo"));
                txt_edad.setText(String.valueOf(rs.getInt("edad")));
                JOptionPane.showMessageDialog(null, "Persona encontrada exitosamente :)");
            } else{
                JOptionPane.showMessageDialog(null, "Error: No existe registro de esa persona.");
            }

            con.close();
            
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_buscarActionPerformed

    private void btn_modificarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_modificarActionPerformed

        try{
            con = mibd.getConnection();
            ps = con.prepareStatement("UPDATE persona SET curp=?,nombre=?,sexo=?,edad=? WHERE id=?");
           
            ps.setString(1, txt_curp.getText());
            ps.setString(2, txt_nombre.getText());
            ps.setString(3, cbx_sexo.getSelectedItem().toString());
            ps.setInt(4, Integer.parseInt(txt_edad.getText()));
            ps.setInt(5, Integer.parseInt(txt_id.getText()));
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona modificada exitosamente :)");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al modificar persona.");
                limpiarCampos();
            }
            
            //Actualiza también la tabla de al lado
            MostrarPersonas();
            
            con.close();
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_modificarActionPerformed

    private void btn_eliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_eliminarActionPerformed

        try{
            con = mibd.getConnection();
            ps = con.prepareStatement("UPDATE persona SET activo= false WHERE id=?");
            
            ps.setInt(1,Integer.parseInt(txt_id.getText()));
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona eliminada exitosamente :)");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al eliminar persona");
                limpiarCampos();
            }
            //Actualiza también la tabla de al lado
            MostrarPersonas();
            
            con.close();
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_eliminarActionPerformed

    private void txt_curpActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txt_curpActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txt_curpActionPerformed

    public static void main(String args[]) {

        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(InterfazTHG.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(InterfazTHG.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(InterfazTHG.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(InterfazTHG.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }

        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new InterfazTHG().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btn_buscar;
    private javax.swing.JButton btn_eliminar;
    private javax.swing.JButton btn_insertar;
    private javax.swing.JButton btn_modificar;
    private javax.swing.JComboBox<String> cbx_sexo;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lbl_curp;
    private javax.swing.JLabel lbl_edad;
    private javax.swing.JLabel lbl_id;
    private javax.swing.JLabel lbl_nombre;
    private javax.swing.JLabel lbl_sexo;
    private javax.swing.JTable tbl_Persona;
    private javax.swing.JTextField txt_curp;
    private javax.swing.JTextField txt_edad;
    private javax.swing.JTextField txt_id;
    private javax.swing.JTextField txt_nombre;
    // End of variables declaration//GEN-END:variables

    //Para añadir un background a nuestra interfaz
    class Background extends JPanel{
        
        private Image imagen;
        
        public void paint(Graphics g){
            imagen = new ImageIcon(getClass().getResource("/Background/HungerGames.jpg")).getImage();
            
            //Se obtiene
            g.drawImage(imagen, 0, 0, getWidth(),getHeight(), this);
            
            setOpaque(false);
            
            super.paint(g);
        }
    
    }
    
    private Connection getConnection() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}