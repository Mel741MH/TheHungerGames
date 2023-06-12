/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
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
    }


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

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        cbx_sexo.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Seleccionar", "Femenino", "Masculino" }));

        lbl_id.setText("ID:");

        lbl_curp.setText("CURP:");

        lbl_nombre.setText("Nombre:");

        lbl_sexo.setText("Género:");

        lbl_edad.setText("Edad:");

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

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                .addGap(15, 15, 15)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addComponent(lbl_edad)
                        .addComponent(lbl_sexo)
                        .addComponent(lbl_curp)
                        .addComponent(lbl_nombre))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(lbl_id)))
                .addGap(45, 45, 45)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txt_curp, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(cbx_sexo, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, 250, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 54, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btn_eliminar)
                    .addComponent(btn_insertar)
                    .addComponent(btn_buscar)
                    .addComponent(btn_modificar))
                .addGap(36, 36, 36))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGap(44, 44, 44)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_id)
                    .addComponent(txt_id, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_buscar)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lbl_curp)
                            .addComponent(txt_curp, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(btn_insertar)))
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lbl_nombre)
                            .addComponent(txt_nombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(21, 21, 21)
                        .addComponent(btn_modificar)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbl_sexo)
                    .addComponent(cbx_sexo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btn_eliminar)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txt_edad, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(lbl_edad))
                .addContainerGap(28, Short.MAX_VALUE))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGap(0, 0, 0))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
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
            ps = con.prepareStatement("INSERT INTO persona (curp, nombre, sexo, edad) VALUES(?, ?, ?, ?);");
            ps.setString(1, txt_curp.getText());
            ps.setString(2, txt_nombre.getText());
            ps.setString(3, cbx_sexo.getSelectedItem().toString());
            ps.setInt(4, Integer.parseInt(txt_edad.getText()));
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona guardada");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al guardar persona");
                limpiarCampos();
            }
            
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
            ps = con.prepareStatement("SELECT * FROM persona WHERE id = ?;");
            ps.setInt(1, Integer.parseInt(txt_id.getText()));
            
            rs = ps.executeQuery();
            if(rs.next()){
                txt_curp.setText(rs.getString("curp"));
                txt_nombre.setText(rs.getString("nombre"));
                cbx_sexo.setSelectedItem(rs.getString("sexo"));
                txt_edad.setText(String.valueOf(rs.getInt("edad")));
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
            
            ps.setString(1, txt_id.getText());
            ps.setString(2, txt_curp.getText());
            ps.setString(3, txt_nombre.getText());
            ps.setString(4, cbx_sexo.getSelectedItem().toString());
            ps.setString(5, txt_edad.getText());
            
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona modificada exitosamente");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al modificar persona");
                limpiarCampos();
            }
            
            con.close();
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_modificarActionPerformed

    private void btn_eliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btn_eliminarActionPerformed
        Connection con = null;
        
        try{
            con = getConnection();
            ps = con.prepareStatement("DELETE FROM persona WHERE id=?");
            
            ps.setInt(1,Integer.parseInt(txt_id.getText()));
            
            int res = ps.executeUpdate();
            
            if(res>0){
                JOptionPane.showMessageDialog(null, "Persona eliminada exitosamente");
                limpiarCampos();
            } else {
                JOptionPane.showMessageDialog(null, "Error al eliminar persona");
                limpiarCampos();
            }
            
            con.close();
        } catch(SQLException e){
            Logger.getLogger(MiBD.class.getName()).log(Level.SEVERE, null, e);
            System.err.println(e);
        }
    }//GEN-LAST:event_btn_eliminarActionPerformed

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
    private javax.swing.JLabel lbl_curp;
    private javax.swing.JLabel lbl_edad;
    private javax.swing.JLabel lbl_id;
    private javax.swing.JLabel lbl_nombre;
    private javax.swing.JLabel lbl_sexo;
    private javax.swing.JTextField txt_curp;
    private javax.swing.JTextField txt_edad;
    private javax.swing.JTextField txt_id;
    private javax.swing.JTextField txt_nombre;
    // End of variables declaration//GEN-END:variables

    //Para añadir un background a nuestra interfaz
    class Background extends JPanel{
        
        private Image imagen;
        
        public void paint(Graphics g){
            imagen = new ImageIcon(getClass().getResource("/Background/HungerGames.jpeg")).getImage();
            
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
